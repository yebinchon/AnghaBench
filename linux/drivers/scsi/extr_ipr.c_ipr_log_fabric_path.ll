; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_fabric_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_fabric_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.ipr_hostrcb = type { i32 }
%struct.ipr_hostrcb_fabric_desc = type { i64, i32, i32, i32 }

@IPR_PATH_ACTIVE_MASK = common dso_local global i64 0, align 8
@IPR_PATH_STATE_MASK = common dso_local global i64 0, align 8
@path_active_desc = common dso_local global %struct.TYPE_4__* null, align 8
@path_state_desc = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s %s: IOA Port=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s %s: IOA Port=%d, Phy=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s %s: IOA Port=%d, Cascade=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s %s: IOA Port=%d, Cascade=%d, Phy=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Path state=%02X IOA Port=%d Cascade=%d Phy=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_hostrcb*, %struct.ipr_hostrcb_fabric_desc*)* @ipr_log_fabric_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_log_fabric_path(%struct.ipr_hostrcb* %0, %struct.ipr_hostrcb_fabric_desc* %1) #0 {
  %3 = alloca %struct.ipr_hostrcb*, align 8
  %4 = alloca %struct.ipr_hostrcb_fabric_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ipr_hostrcb* %0, %struct.ipr_hostrcb** %3, align 8
  store %struct.ipr_hostrcb_fabric_desc* %1, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %10 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %11 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @IPR_PATH_ACTIVE_MASK, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @IPR_PATH_STATE_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %161, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_active_desc, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %164

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_active_desc, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %161

34:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %157, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_state_desc, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %160

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_state_desc, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %157

50:                                               ; preds = %40
  %51 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %52 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %57 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_active_desc, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_state_desc, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %75 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.ipr_hostrcb*, i8*, i32, i32, i32, ...) @ipr_hcam_err(%struct.ipr_hostrcb* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %73, i32 %76)
  br label %156

78:                                               ; preds = %55, %50
  %79 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %80 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 255
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_active_desc, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_state_desc, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %98 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %101 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.ipr_hostrcb*, i8*, i32, i32, i32, ...) @ipr_hcam_err(%struct.ipr_hostrcb* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %96, i32 %99, i32 %102)
  br label %155

104:                                              ; preds = %78
  %105 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %106 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 255
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_active_desc, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_state_desc, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %124 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %127 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (%struct.ipr_hostrcb*, i8*, i32, i32, i32, ...) @ipr_hcam_err(%struct.ipr_hostrcb* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %122, i32 %125, i32 %128)
  br label %154

130:                                              ; preds = %104
  %131 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_active_desc, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_state_desc, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %145 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %148 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %151 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (%struct.ipr_hostrcb*, i8*, i32, i32, i32, ...) @ipr_hcam_err(%struct.ipr_hostrcb* %131, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %143, i32 %146, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %130, %109
  br label %155

155:                                              ; preds = %154, %83
  br label %156

156:                                              ; preds = %155, %60
  br label %176

157:                                              ; preds = %49
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %35

160:                                              ; preds = %35
  br label %161

161:                                              ; preds = %160, %33
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %19

164:                                              ; preds = %19
  %165 = load i64, i64* %7, align 8
  %166 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %167 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %170 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ipr_hostrcb_fabric_desc*, %struct.ipr_hostrcb_fabric_desc** %4, align 8
  %173 = getelementptr inbounds %struct.ipr_hostrcb_fabric_desc, %struct.ipr_hostrcb_fabric_desc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ipr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %165, i32 %168, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %164, %156
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @ipr_hcam_err(%struct.ipr_hostrcb*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ipr_err(i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
