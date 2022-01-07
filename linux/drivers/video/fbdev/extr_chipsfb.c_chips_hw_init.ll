; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_chipsfb.c_chips_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_chipsfb.c_chips_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@chips_init_xr = common dso_local global %struct.TYPE_8__* null, align 8
@chips_init_sr = common dso_local global %struct.TYPE_8__* null, align 8
@chips_init_gr = common dso_local global %struct.TYPE_8__* null, align 8
@chips_init_ar = common dso_local global %struct.TYPE_8__* null, align 8
@chips_init_cr = common dso_local global %struct.TYPE_8__* null, align 8
@chips_init_fr = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @chips_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chips_hw_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %21, %0
  %3 = load i32, i32* %1, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_xr, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %4)
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_xr, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_xr, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @write_xr(i32 %13, i32 %19)
  br label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %2

24:                                               ; preds = %2
  %25 = call i32 @outb(i32 41, i32 962)
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %45, %24
  %27 = load i32, i32* %1, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_sr, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_sr, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_sr, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @write_sr(i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %26

48:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %1, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_gr, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_gr, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_gr, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @write_gr(i32 %60, i32 %66)
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %49

71:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i32, i32* %1, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_ar, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %74)
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_ar, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_ar, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @write_ar(i32 %83, i32 %89)
  br label %91

91:                                               ; preds = %77
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %1, align 4
  br label %72

94:                                               ; preds = %72
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %1, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_cr, align 8
  %98 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %97)
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_cr, align 8
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_cr, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @write_cr(i32 %106, i32 %112)
  br label %114

114:                                              ; preds = %100
  %115 = load i32, i32* %1, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %1, align 4
  br label %95

117:                                              ; preds = %95
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %137, %117
  %119 = load i32, i32* %1, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_fr, align 8
  %121 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %120)
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %118
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_fr, align 8
  %125 = load i32, i32* %1, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chips_init_fr, align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @write_fr(i32 %129, i32 %135)
  br label %137

137:                                              ; preds = %123
  %138 = load i32, i32* %1, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %1, align 4
  br label %118

140:                                              ; preds = %118
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @write_xr(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @write_sr(i32, i32) #1

declare dso_local i32 @write_gr(i32, i32) #1

declare dso_local i32 @write_ar(i32, i32) #1

declare dso_local i32 @write_cr(i32, i32) #1

declare dso_local i32 @write_fr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
