; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_read_flash_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_read_flash_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@DRBL_FLASH_REQ = common dso_local global i32 0, align 4
@AF2_SERIAL_FLASH = common dso_local global i32 0, align 4
@MW_DATA_ADDR_SER_FLASH = common dso_local global i32 0, align 4
@WINDOW_SIZE = common dso_local global i32 0, align 4
@MW_DATA_ADDR_PAR_FLASH = common dso_local global i32 0, align 4
@DRBL_FLASH_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_read_flash_block(%struct.esas2r_adapter* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %17 = load i32, i32* @DRBL_FLASH_REQ, align 4
  %18 = call i32 @esas2r_flash_access(%struct.esas2r_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %87

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %82, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  %26 = load i32, i32* @AF2_SERIAL_FLASH, align 4
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* @MW_DATA_ADDR_SER_FLASH, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @WINDOW_SIZE, align 4
  %35 = sub nsw i32 0, %34
  %36 = and i32 %33, %35
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %13, align 4
  br label %45

38:                                               ; preds = %25
  %39 = load i32, i32* @MW_DATA_ADDR_PAR_FLASH, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @WINDOW_SIZE, align 4
  %42 = sub nsw i32 0, %41
  %43 = and i32 %40, %42
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @esas2r_map_data_window(%struct.esas2r_adapter* %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @WINDOW_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @WINDOW_SIZE, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %55, %56
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = load i32, i32* @WINDOW_SIZE, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %45
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %74, %63
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %11, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @esas2r_read_data_byte(%struct.esas2r_adapter* %75, i32 %76)
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %70

82:                                               ; preds = %70
  br label %22

83:                                               ; preds = %22
  %84 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %85 = load i32, i32* @DRBL_FLASH_DONE, align 4
  %86 = call i32 @esas2r_flash_access(%struct.esas2r_adapter* %84, i32 %85)
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %20
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @esas2r_flash_access(%struct.esas2r_adapter*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_map_data_window(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_read_data_byte(%struct.esas2r_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
