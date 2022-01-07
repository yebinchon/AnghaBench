; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_fun_scam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_fun_scam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_unit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.atp_unit*, i16*)* @fun_scam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fun_scam(%struct.atp_unit* %0, i16* %1) #0 {
  %3 = alloca %struct.atp_unit*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  store %struct.atp_unit* %0, %struct.atp_unit** %3, align 8
  store i16* %1, i16** %4, align 8
  %8 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %9 = load i16*, i16** %4, align 8
  %10 = load i16, i16* %9, align 2
  %11 = call i32 @atp_writew_io(%struct.atp_unit* %8, i32 0, i32 28, i16 zeroext %10)
  store i16 0, i16* %5, align 2
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %18 = call i32 @atp_readw_io(%struct.atp_unit* %17, i32 0, i32 28)
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %6, align 2
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = ashr i32 %21, 8
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %7, align 1
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 32768
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i16 0, i16* %5, align 2
  br label %29

29:                                               ; preds = %28, %16
  br label %30

30:                                               ; preds = %29
  %31 = load i16, i16* %5, align 2
  %32 = add i16 %31, 1
  store i16 %32, i16* %5, align 2
  br label %12

33:                                               ; preds = %12
  %34 = load i16*, i16** %4, align 8
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, 16384
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %34, align 2
  %39 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %40 = load i16*, i16** %4, align 8
  %41 = load i16, i16* %40, align 2
  %42 = call i32 @atp_writew_io(%struct.atp_unit* %39, i32 0, i32 28, i16 zeroext %41)
  %43 = load i16*, i16** %4, align 8
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 57343
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %43, align 2
  %48 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %49 = load i16*, i16** %4, align 8
  %50 = load i16, i16* %49, align 2
  %51 = call i32 @atp_writew_io(%struct.atp_unit* %48, i32 0, i32 28, i16 zeroext %50)
  store i16 0, i16* %5, align 2
  br label %52

52:                                               ; preds = %63, %33
  %53 = load i16, i16* %5, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %58 = call i32 @atp_readw_io(%struct.atp_unit* %57, i32 0, i32 28)
  %59 = and i32 %58, 8192
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i16 0, i16* %5, align 2
  br label %62

62:                                               ; preds = %61, %56
  br label %63

63:                                               ; preds = %62
  %64 = load i16, i16* %5, align 2
  %65 = add i16 %64, 1
  store i16 %65, i16* %5, align 2
  br label %52

66:                                               ; preds = %52
  %67 = load i16*, i16** %4, align 8
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %69, 32768
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %67, align 2
  %72 = load i16*, i16** %4, align 8
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = and i32 %74, 57599
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %72, align 2
  %77 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %78 = load i16*, i16** %4, align 8
  %79 = load i16, i16* %78, align 2
  %80 = call i32 @atp_writew_io(%struct.atp_unit* %77, i32 0, i32 28, i16 zeroext %79)
  %81 = load i16*, i16** %4, align 8
  %82 = load i16, i16* %81, align 2
  %83 = zext i16 %82 to i32
  %84 = and i32 %83, 49151
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %81, align 2
  %86 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %87 = load i16*, i16** %4, align 8
  %88 = load i16, i16* %87, align 2
  %89 = call i32 @atp_writew_io(%struct.atp_unit* %86, i32 0, i32 28, i16 zeroext %88)
  store i16 0, i16* %5, align 2
  br label %90

90:                                               ; preds = %101, %66
  %91 = load i16, i16* %5, align 2
  %92 = zext i16 %91 to i32
  %93 = icmp slt i32 %92, 10
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %96 = call i32 @atp_readw_io(%struct.atp_unit* %95, i32 0, i32 28)
  %97 = and i32 %96, 16384
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i16 0, i16* %5, align 2
  br label %100

100:                                              ; preds = %99, %94
  br label %101

101:                                              ; preds = %100
  %102 = load i16, i16* %5, align 2
  %103 = add i16 %102, 1
  store i16 %103, i16* %5, align 2
  br label %90

104:                                              ; preds = %90
  %105 = load i8, i8* %7, align 1
  ret i8 %105
}

declare dso_local i32 @atp_writew_io(%struct.atp_unit*, i32, i32, i16 zeroext) #1

declare dso_local i32 @atp_readw_io(%struct.atp_unit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
