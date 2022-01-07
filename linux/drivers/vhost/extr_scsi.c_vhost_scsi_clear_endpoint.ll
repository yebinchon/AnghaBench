; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_clear_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_clear_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi = type { %struct.TYPE_6__, i32, %struct.vhost_scsi_tpg**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vhost_scsi_tpg = type { i32, %struct.se_portal_group, i32*, i32, i32, %struct.vhost_scsi_tport* }
%struct.se_portal_group = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vhost_scsi_tport = type { i32 }
%struct.TYPE_5__ = type { %struct.vhost_virtqueue }
%struct.vhost_virtqueue = type { i32, i32* }
%struct.vhost_scsi_target = type { i32, i32 }

@vhost_scsi_mutex = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VHOST_SCSI_MAX_TARGET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"tv_tport->tport_name: %s, tpg->tport_tpgt: %hu does not match t->vhost_wwpn: %s, t->vhost_tpgt: %hu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VHOST_SCSI_MAX_VQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_scsi*, %struct.vhost_scsi_target*)* @vhost_scsi_clear_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_clear_endpoint(%struct.vhost_scsi* %0, %struct.vhost_scsi_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_scsi*, align 8
  %5 = alloca %struct.vhost_scsi_target*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.vhost_scsi_tport*, align 8
  %8 = alloca %struct.vhost_scsi_tpg*, align 8
  %9 = alloca %struct.vhost_virtqueue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.vhost_scsi* %0, %struct.vhost_scsi** %4, align 8
  store %struct.vhost_scsi_target* %1, %struct.vhost_scsi_target** %5, align 8
  store i32 0, i32* %10, align 4
  %15 = call i32 @mutex_lock(i32* @vhost_scsi_mutex)
  %16 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %17 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %41, %2
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %23 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %29 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @vhost_vq_access_ok(%struct.vhost_virtqueue* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %178

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %46 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %45, i32 0, i32 2
  %47 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %46, align 8
  %48 = icmp ne %struct.vhost_scsi_tpg** %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %178

50:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %125, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @VHOST_SCSI_MAX_TARGET, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %128

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %14, align 8
  %58 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %59 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %58, i32 0, i32 2
  %60 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %60, i64 %61
  %63 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %62, align 8
  store %struct.vhost_scsi_tpg* %63, %struct.vhost_scsi_tpg** %8, align 8
  %64 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %8, align 8
  %65 = icmp ne %struct.vhost_scsi_tpg* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  br label %125

67:                                               ; preds = %55
  %68 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %8, align 8
  %69 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %8, align 8
  %72 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %71, i32 0, i32 5
  %73 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %72, align 8
  store %struct.vhost_scsi_tport* %73, %struct.vhost_scsi_tport** %7, align 8
  %74 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %7, align 8
  %75 = icmp ne %struct.vhost_scsi_tport* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %174

79:                                               ; preds = %67
  %80 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %7, align 8
  %81 = getelementptr inbounds %struct.vhost_scsi_tport, %struct.vhost_scsi_tport* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vhost_scsi_target*, %struct.vhost_scsi_target** %5, align 8
  %84 = getelementptr inbounds %struct.vhost_scsi_target, %struct.vhost_scsi_target* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @strcmp(i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %79
  %89 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %7, align 8
  %90 = getelementptr inbounds %struct.vhost_scsi_tport, %struct.vhost_scsi_tport* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %8, align 8
  %93 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vhost_scsi_target*, %struct.vhost_scsi_target** %5, align 8
  %96 = getelementptr inbounds %struct.vhost_scsi_target, %struct.vhost_scsi_target* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vhost_scsi_target*, %struct.vhost_scsi_target** %5, align 8
  %99 = getelementptr inbounds %struct.vhost_scsi_target, %struct.vhost_scsi_target* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pr_warn(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94, i32 %97, i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %174

104:                                              ; preds = %79
  %105 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %8, align 8
  %106 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %8, align 8
  %110 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %109, i32 0, i32 2
  store i32* null, i32** %110, align 8
  %111 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %112 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %111, i32 0, i32 2
  %113 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %112, align 8
  %114 = load i64, i64* %14, align 8
  %115 = getelementptr inbounds %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %113, i64 %114
  store %struct.vhost_scsi_tpg* null, %struct.vhost_scsi_tpg** %115, align 8
  store i32 1, i32* %10, align 4
  %116 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %8, align 8
  %117 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %8, align 8
  %120 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %119, i32 0, i32 1
  store %struct.se_portal_group* %120, %struct.se_portal_group** %6, align 8
  %121 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %122 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = call i32 @target_undepend_item(i32* %123)
  br label %125

125:                                              ; preds = %104, %66
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %51

128:                                              ; preds = %51
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %128
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %152, %131
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %132
  %137 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %138 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store %struct.vhost_virtqueue* %143, %struct.vhost_virtqueue** %9, align 8
  %144 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %145 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %144, i32 0, i32 0
  %146 = call i32 @mutex_lock(i32* %145)
  %147 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %148 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %147, i32 0, i32 1
  store i32* null, i32** %148, align 8
  %149 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %150 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %149, i32 0, i32 0
  %151 = call i32 @mutex_unlock(i32* %150)
  br label %152

152:                                              ; preds = %136
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %132

155:                                              ; preds = %132
  br label %156

156:                                              ; preds = %155, %128
  %157 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %158 = call i32 @vhost_scsi_flush(%struct.vhost_scsi* %157)
  %159 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %160 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %159, i32 0, i32 2
  %161 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %160, align 8
  %162 = call i32 @kfree(%struct.vhost_scsi_tpg** %161)
  %163 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %164 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %163, i32 0, i32 2
  store %struct.vhost_scsi_tpg** null, %struct.vhost_scsi_tpg*** %164, align 8
  %165 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %166 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @WARN_ON(i32 %167)
  %169 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %170 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = call i32 @mutex_unlock(i32* %171)
  %173 = call i32 @mutex_unlock(i32* @vhost_scsi_mutex)
  store i32 0, i32* %3, align 4
  br label %185

174:                                              ; preds = %88, %76
  %175 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %8, align 8
  %176 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %175, i32 0, i32 0
  %177 = call i32 @mutex_unlock(i32* %176)
  br label %178

178:                                              ; preds = %174, %49, %37
  %179 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %180 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = call i32 @mutex_unlock(i32* %181)
  %183 = call i32 @mutex_unlock(i32* @vhost_scsi_mutex)
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %178, %156
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_vq_access_ok(%struct.vhost_virtqueue*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @target_undepend_item(i32*) #1

declare dso_local i32 @vhost_scsi_flush(%struct.vhost_scsi*) #1

declare dso_local i32 @kfree(%struct.vhost_scsi_tpg**) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
