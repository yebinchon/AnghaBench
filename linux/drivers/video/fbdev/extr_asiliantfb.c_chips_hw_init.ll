; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_chips_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_chips_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.fb_info = type { i32 }

@chips_init_xr = common dso_local global %struct.TYPE_8__* null, align 8
@chips_init_sr = common dso_local global %struct.TYPE_8__* null, align 8
@chips_init_gr = common dso_local global %struct.TYPE_8__* null, align 8
@chips_init_ar = common dso_local global %struct.TYPE_8__* null, align 8
@mmio_base = common dso_local global i64 0, align 8
@chips_init_cr = common dso_local global %struct.TYPE_8__* null, align 8
@chips_init_fr = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @chips_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chips_hw_init(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_xr, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_xr, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_xr, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @write_xr(i32 %15, i32 %21)
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %4
  %27 = call i32 @write_xr(i32 129, i32 18)
  %28 = call i32 @write_xr(i32 130, i32 8)
  %29 = call i32 @write_xr(i32 32, i32 0)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %49, %26
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_sr, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_sr, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_sr, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @write_sr(i32 %41, i32 %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %30

52:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %72, %52
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_gr, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_gr, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_gr, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @write_gr(i32 %64, i32 %70)
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %53

75:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %95, %75
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_ar, align 8
  %79 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %78)
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_ar, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_ar, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @write_ar(i32 %87, i32 %93)
  br label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %76

98:                                               ; preds = %76
  %99 = load i64, i64* @mmio_base, align 8
  %100 = add nsw i64 %99, 1920
  %101 = call i32 @writeb(i32 32, i64 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %121, %98
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_cr, align 8
  %105 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %104)
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_cr, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_cr, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @write_cr(i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %102

124:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %144, %124
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_fr, align 8
  %128 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %127)
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %125
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_fr, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_fr, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @write_fr(i32 %136, i32 %142)
  br label %144

144:                                              ; preds = %130
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %125

147:                                              ; preds = %125
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @write_xr(i32, i32) #1

declare dso_local i32 @write_sr(i32, i32) #1

declare dso_local i32 @write_gr(i32, i32) #1

declare dso_local i32 @write_ar(i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @write_cr(i32, i32) #1

declare dso_local i32 @write_fr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
