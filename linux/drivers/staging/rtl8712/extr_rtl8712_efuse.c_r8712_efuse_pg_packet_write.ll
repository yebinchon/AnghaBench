; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_pg_packet_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_pg_packet_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@EFUSE_CLK_CTRL = common dso_local global i32 0, align 4
@efuse_available_max_size = common dso_local global i64 0, align 8
@_REPEAT_THRESHOLD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_efuse_pg_packet_write(%struct._adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %17, align 4
  %19 = load %struct._adapter*, %struct._adapter** %6, align 8
  %20 = load i32, i32* @EFUSE_CLK_CTRL, align 4
  %21 = call i32 @r8712_read8(%struct._adapter* %19, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %138

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @MAKE_EFUSE_HEADER(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @calculate_word_cnts(i32 %29)
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %135, %25
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @efuse_available_max_size, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %136

35:                                               ; preds = %31
  %36 = load %struct._adapter*, %struct._adapter** %6, align 8
  %37 = call i64 @r8712_efuse_get_current_size(%struct._adapter* %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add nsw i64 %38, 1
  %40 = load i32, i32* %14, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = load i64, i64* @efuse_available_max_size, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %138

47:                                               ; preds = %35
  %48 = load i64, i64* %12, align 8
  store i64 %48, i64* %11, align 8
  %49 = load %struct._adapter*, %struct._adapter** %6, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @efuse_one_byte_write(%struct._adapter* %49, i64 %50, i32 %51)
  store i32 0, i32* %16, align 4
  br label %53

53:                                               ; preds = %65, %47
  %54 = load %struct._adapter*, %struct._adapter** %6, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @efuse_one_byte_read(%struct._adapter* %54, i64 %55, i32* %13)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* @_REPEAT_THRESHOLD_, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  br label %66

65:                                               ; preds = %59
  br label %53

66:                                               ; preds = %64, %53
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @_REPEAT_THRESHOLD_, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %117

74:                                               ; preds = %70, %66
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %11, align 8
  store i32 0, i32* %18, align 4
  br label %77

77:                                               ; preds = %113, %74
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 %79, 2
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %77
  %83 = load %struct._adapter*, %struct._adapter** %6, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @efuse_one_byte_write(%struct._adapter* %83, i64 %87, i32 %92)
  %94 = load %struct._adapter*, %struct._adapter** %6, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = call i32 @efuse_one_byte_read(%struct._adapter* %94, i64 %98, i32* %13)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %82
  store i32 0, i32* %17, align 4
  br label %112

102:                                              ; preds = %82
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 0, i32* %17, align 4
  br label %111

111:                                              ; preds = %110, %102
  br label %112

112:                                              ; preds = %111, %101
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %77

116:                                              ; preds = %77
  br label %136

117:                                              ; preds = %70
  store i32 0, i32* %17, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 255
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %5, align 4
  br label %138

122:                                              ; preds = %117
  %123 = load %struct._adapter*, %struct._adapter** %6, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @fix_header(%struct._adapter* %123, i32 %124, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %138

129:                                              ; preds = %122
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* @_REPEAT_THRESHOLD_, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %136

135:                                              ; preds = %129
  br label %31

136:                                              ; preds = %134, %116, %31
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %128, %120, %46, %24
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @MAKE_EFUSE_HEADER(i32, i32) #1

declare dso_local i32 @calculate_word_cnts(i32) #1

declare dso_local i64 @r8712_efuse_get_current_size(%struct._adapter*) #1

declare dso_local i32 @efuse_one_byte_write(%struct._adapter*, i64, i32) #1

declare dso_local i32 @efuse_one_byte_read(%struct._adapter*, i64, i32*) #1

declare dso_local i32 @fix_header(%struct._adapter*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
