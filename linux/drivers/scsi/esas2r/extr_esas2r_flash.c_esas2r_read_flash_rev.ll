; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_read_flash_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_read_flash_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@FLS_OFFSET_CPYR = common dso_local global i64 0, align 8
@FBT_CPYR = common dso_local global i32 0, align 4
@FBT_SETUP = common dso_local global i32 0, align 4
@FBT_FLASH_VER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_read_flash_rev(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca [256 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  store i32 1024, i32* %8, align 4
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %4, align 8
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32* %14, i32** %5, align 8
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %17 = load i64, i64* @FLS_OFFSET_CPYR, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %17, %19
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @esas2r_read_flash_block(%struct.esas2r_adapter* %15, i32* %16, i64 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %71

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp uge i32* %27, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 -1
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 -1
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %41, 2
  %43 = load i32*, i32** %4, align 8
  %44 = sext i32 %42 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @FBT_CPYR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @FBT_SETUP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ult i32* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50, %30
  br label %26

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @FBT_FLASH_VER, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %59
  br label %70

70:                                               ; preds = %69, %26
  br label %71

71:                                               ; preds = %70, %24
  %72 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %73 = call i32 @esas2r_print_flash_rev(%struct.esas2r_adapter* %72)
  ret i32 %73
}

declare dso_local i32 @esas2r_read_flash_block(%struct.esas2r_adapter*, i32*, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @esas2r_print_flash_rev(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
