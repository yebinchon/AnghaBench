; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_io_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_io_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i32, i32, i32, %struct.Scsi_Host*, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.scsi_device = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"scsi_add_host failed\0A\00", align 1
@MVUMI_FW_ATTACH = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_MARVELL_MV9580 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"add virtual device failed\0A\00", align 1
@mvumi_rescan_bus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"mvumi_scanthread\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to create device scan thread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*)* @mvumi_io_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_io_attach(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  %8 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %8, i32 0, i32 4
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_device* null, %struct.scsi_device** %5, align 8
  %11 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %12 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 4
  %17 = udiv i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %20 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %19, i32 0, i32 6
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %27 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %32 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %38 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  br label %42

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ %40, %36 ], [ 1, %41 ]
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %47 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  br label %57

53:                                               ; preds = %42
  %54 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %55 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi i32 [ %52, %51 ], [ %56, %53 ]
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %62 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 512
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %68 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %57
  %73 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %74 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  br label %78

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi i32 [ %76, %72 ], [ 1, %77 ]
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %81 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %83 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %86 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %85, i32 0, i32 5
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %91 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %92 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %91, i32 0, i32 6
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = call i32 @scsi_add_host(%struct.Scsi_Host* %90, i32* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %78
  %99 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %100 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %99, i32 0, i32 6
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %204

105:                                              ; preds = %78
  %106 = load i32, i32* @MVUMI_FW_ATTACH, align 4
  %107 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %108 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %112 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %111, i32 0, i32 7
  %113 = call i32 @mutex_lock(i32* %112)
  %114 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %115 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %114, i32 0, i32 6
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PCI_DEVICE_ID_MARVELL_MV9580, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %105
  %122 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %123 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %124 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %125, 1
  %127 = call i32 @scsi_add_device(%struct.Scsi_Host* %122, i32 0, i64 %126, i32 0)
  store i32 %127, i32* %6, align 4
  br label %129

128:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %121
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %134 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %133, i32 0, i32 6
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %138 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %139 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %138, i32 0, i32 7
  %140 = call i32 @mutex_unlock(i32* %139)
  br label %198

141:                                              ; preds = %129
  %142 = load i32, i32* @mvumi_rescan_bus, align 4
  %143 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %144 = call i32 @kthread_create(i32 %142, %struct.mvumi_hba* %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %145 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %146 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 4
  %147 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %148 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @IS_ERR(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %141
  %153 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %154 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %153, i32 0, i32 6
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = call i32 @dev_err(i32* %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %158 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %159 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %158, i32 0, i32 7
  %160 = call i32 @mutex_unlock(i32* %159)
  br label %172

161:                                              ; preds = %141
  %162 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %163 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %162, i32 0, i32 9
  %164 = call i32 @atomic_set(i32* %163, i32 1)
  %165 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %166 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @wake_up_process(i32 %167)
  %169 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %170 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %169, i32 0, i32 7
  %171 = call i32 @mutex_unlock(i32* %170)
  store i32 0, i32* %2, align 4
  br label %204

172:                                              ; preds = %152
  %173 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %174 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %173, i32 0, i32 6
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @PCI_DEVICE_ID_MARVELL_MV9580, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %172
  %181 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %182 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %181, i32 0, i32 4
  %183 = load %struct.Scsi_Host*, %struct.Scsi_Host** %182, align 8
  %184 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %185 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %186, 1
  %188 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %183, i32 0, i64 %187, i32 0)
  store %struct.scsi_device* %188, %struct.scsi_device** %5, align 8
  br label %189

189:                                              ; preds = %180, %172
  %190 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %191 = icmp ne %struct.scsi_device* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %194 = call i32 @scsi_remove_device(%struct.scsi_device* %193)
  %195 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %196 = call i32 @scsi_device_put(%struct.scsi_device* %195)
  br label %197

197:                                              ; preds = %192, %189
  br label %198

198:                                              ; preds = %197, %132
  %199 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %200 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %199, i32 0, i32 4
  %201 = load %struct.Scsi_Host*, %struct.Scsi_Host** %200, align 8
  %202 = call i32 @scsi_remove_host(%struct.Scsi_Host* %201)
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %198, %161, %98
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_add_device(%struct.Scsi_Host*, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kthread_create(i32, %struct.mvumi_hba*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host*, i32, i64, i32) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
