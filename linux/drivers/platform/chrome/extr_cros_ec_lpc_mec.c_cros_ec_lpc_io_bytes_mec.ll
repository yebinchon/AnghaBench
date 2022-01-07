; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc_mec.c_cros_ec_lpc_io_bytes_mec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc_mec.c_cros_ec_lpc_io_bytes_mec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mec_emi_base = common dso_local global i64 0, align 8
@mec_emi_end = common dso_local global i64 0, align 8
@ACCESS_TYPE_BYTE = common dso_local global i32 0, align 4
@ACCESS_TYPE_LONG_AUTO_INCREMENT = common dso_local global i32 0, align 4
@io_mutex = common dso_local global i32 0, align 4
@MEC_IO_READ = common dso_local global i32 0, align 4
@MEC_IO_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cros_ec_lpc_io_bytes_mec(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %15 = load i64, i64* @mec_emi_base, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @mec_emi_end, align 8
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ true, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load i64, i64* @mec_emi_base, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* @mec_emi_end, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %20
  store i64 0, i64* %5, align 8
  br label %131

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @ACCESS_TYPE_BYTE, align 4
  store i32 %38, i32* %13, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ACCESS_TYPE_LONG_AUTO_INCREMENT, align 4
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = call i32 @mutex_lock(i32* @io_mutex)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @cros_ec_lpc_mec_emi_write_address(i32 %43, i32 %44)
  %46 = load i64, i64* @mec_emi_base, align 8
  %47 = call i32 @MEC_EMI_EC_DATA_B0(i64 %46)
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 3
  %50 = add i32 %47, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %124, %41
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %127

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %97, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i64, i64* @mec_emi_base, align 8
  %59 = call i32 @MEC_EMI_EC_DATA_B3(i64 %58)
  %60 = icmp sle i32 %57, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MEC_IO_READ, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = call i64 @inb(i32 %66)
  %69 = load i64*, i64** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  br label %82

73:                                               ; preds = %61
  %74 = load i64*, i64** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = call i32 @outb(i64 %78, i32 %79)
  br label %82

82:                                               ; preds = %73, %65
  %83 = load i64*, i64** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %12, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %128

97:                                               ; preds = %82
  br label %56

98:                                               ; preds = %56
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub i32 %99, %100
  %102 = icmp ult i32 %101, 4
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @MEC_IO_WRITE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @ACCESS_TYPE_BYTE, align 4
  store i32 %108, i32* %14, align 4
  br label %111

109:                                              ; preds = %103, %98
  %110 = load i32, i32* @ACCESS_TYPE_LONG_AUTO_INCREMENT, align 4
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @ACCESS_TYPE_LONG_AUTO_INCREMENT, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %111
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @cros_ec_lpc_mec_emi_write_address(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %115
  %125 = load i64, i64* @mec_emi_base, align 8
  %126 = call i32 @MEC_EMI_EC_DATA_B0(i64 %125)
  store i32 %126, i32* %11, align 4
  br label %51

127:                                              ; preds = %51
  br label %128

128:                                              ; preds = %127, %96
  %129 = call i32 @mutex_unlock(i32* @io_mutex)
  %130 = load i64, i64* %12, align 8
  store i64 %130, i64* %5, align 8
  br label %131

131:                                              ; preds = %128, %29
  %132 = load i64, i64* %5, align 8
  ret i64 %132
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cros_ec_lpc_mec_emi_write_address(i32, i32) #1

declare dso_local i32 @MEC_EMI_EC_DATA_B0(i64) #1

declare dso_local i32 @MEC_EMI_EC_DATA_B3(i64) #1

declare dso_local i64 @inb(i32) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
