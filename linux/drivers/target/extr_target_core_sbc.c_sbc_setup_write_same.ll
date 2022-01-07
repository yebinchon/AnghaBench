; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_sbc_setup_write_same.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_sbc_setup_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i64, i32*, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.se_device*)* }
%struct.sbc_ops = type { i64, i32 }

@.str = private unnamed_addr constant [77 x i8] c"WRITE_SAME PBDATA and LBDATA bits not supported for Block Discard Emulation\0A\00", align 1
@TCM_UNSUPPORTED_SCSI_OPCODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"WRITE_SAME sectors: %u exceeds max_write_same_len: %u\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"WRITE_SAME exceeds last lba %llu (lba %llu, sectors %u)\0A\00", align 1
@TCM_ADDRESS_OUT_OF_RANGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"WRITE SAME with ANCHOR not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"Got WRITE_SAME w/ UNMAP=1, but backend device has emulate_tpws disabled\0A\00", align 1
@sbc_execute_write_same_unmap = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_cmd*, i8*, %struct.sbc_ops*)* @sbc_setup_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sbc_setup_write_same(%struct.se_cmd* %0, i8* %1, %struct.sbc_ops* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sbc_ops*, align 8
  %8 = alloca %struct.se_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sbc_ops* %2, %struct.sbc_ops** %7, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 3
  %14 = load %struct.se_device*, %struct.se_device** %13, align 8
  store %struct.se_device* %14, %struct.se_device** %8, align 8
  %15 = load %struct.se_device*, %struct.se_device** %8, align 8
  %16 = getelementptr inbounds %struct.se_device, %struct.se_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %18, align 8
  %20 = load %struct.se_device*, %struct.se_device** %8, align 8
  %21 = call i64 %19(%struct.se_device* %20)
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %9, align 8
  %23 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %24 = call i32 @sbc_get_write_same_sectors(%struct.se_cmd* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31, %3
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @TCM_UNSUPPORTED_SCSI_OPCODE, align 8
  store i64 %40, i64* %4, align 8
  br label %151

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %43, i32 0, i32 3
  %45 = load %struct.se_device*, %struct.se_device** %44, align 8
  %46 = getelementptr inbounds %struct.se_device, %struct.se_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ugt i32 %42, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %52, i32 0, i32 3
  %54 = load %struct.se_device*, %struct.se_device** %53, align 8
  %55 = getelementptr inbounds %struct.se_device, %struct.se_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %57)
  %59 = load i64, i64* @TCM_INVALID_CDB_FIELD, align 8
  store i64 %59, i64* %4, align 8
  br label %151

60:                                               ; preds = %41
  %61 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %68 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %60
  %72 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i64, i64* %9, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %71, %60
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %83 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %81, i64 %84, i32 %85)
  %87 = load i64, i64* @TCM_ADDRESS_OUT_OF_RANGE, align 8
  store i64 %87, i64* %4, align 8
  br label %151

88:                                               ; preds = %71
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 16
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i64, i64* @TCM_INVALID_CDB_FIELD, align 8
  store i64 %97, i64* %4, align 8
  br label %151

98:                                               ; preds = %88
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %98
  %106 = load %struct.sbc_ops*, %struct.sbc_ops** %7, align 8
  %107 = getelementptr inbounds %struct.sbc_ops, %struct.sbc_ops* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = load i64, i64* @TCM_UNSUPPORTED_SCSI_OPCODE, align 8
  store i64 %111, i64* %4, align 8
  br label %151

112:                                              ; preds = %105
  %113 = load %struct.se_device*, %struct.se_device** %8, align 8
  %114 = getelementptr inbounds %struct.se_device, %struct.se_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i64, i64* @TCM_UNSUPPORTED_SCSI_OPCODE, align 8
  store i64 %120, i64* %4, align 8
  br label %151

121:                                              ; preds = %112
  %122 = load i64, i64* @sbc_execute_write_same_unmap, align 8
  %123 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %124 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  store i64 0, i64* %4, align 8
  br label %151

125:                                              ; preds = %98
  %126 = load %struct.sbc_ops*, %struct.sbc_ops** %7, align 8
  %127 = getelementptr inbounds %struct.sbc_ops, %struct.sbc_ops* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = load i64, i64* @TCM_UNSUPPORTED_SCSI_OPCODE, align 8
  store i64 %131, i64* %4, align 8
  br label %151

132:                                              ; preds = %125
  %133 = load %struct.se_device*, %struct.se_device** %8, align 8
  %134 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %135 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %136 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %10, align 4
  %140 = call i64 @sbc_check_prot(%struct.se_device* %133, %struct.se_cmd* %134, i32* %138, i32 %139, i32 1)
  store i64 %140, i64* %11, align 8
  %141 = load i64, i64* %11, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %132
  %144 = load i64, i64* %11, align 8
  store i64 %144, i64* %4, align 8
  br label %151

145:                                              ; preds = %132
  %146 = load %struct.sbc_ops*, %struct.sbc_ops** %7, align 8
  %147 = getelementptr inbounds %struct.sbc_ops, %struct.sbc_ops* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %150 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  store i64 0, i64* %4, align 8
  br label %151

151:                                              ; preds = %145, %143, %130, %121, %118, %110, %95, %80, %50, %38
  %152 = load i64, i64* %4, align 8
  ret i64 %152
}

declare dso_local i32 @sbc_get_write_same_sectors(%struct.se_cmd*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i64 @sbc_check_prot(%struct.se_device*, %struct.se_cmd*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
