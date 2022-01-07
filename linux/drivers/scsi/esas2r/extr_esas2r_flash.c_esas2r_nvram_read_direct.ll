; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_nvram_read_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_nvram_read_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32 }

@FLS_OFFSET_NVR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NVRAM read failed, using defaults\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_nvram_read_direct(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  %5 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %5, i32 0, i32 0
  %7 = call i64 @down_interruptible(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FLS_OFFSET_NVR, align 4
  %16 = call i32 @esas2r_read_flash_block(%struct.esas2r_adapter* %11, i32 %14, i32 %15, i32 4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %27

20:                                               ; preds = %10
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %22 = call i32 @esas2r_nvram_validate(%struct.esas2r_adapter* %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %23, i32 0, i32 0
  %25 = call i32 @up(i32* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %20, %18, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @esas2r_read_flash_block(%struct.esas2r_adapter*, i32, i32, i32) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @esas2r_nvram_validate(%struct.esas2r_adapter*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
