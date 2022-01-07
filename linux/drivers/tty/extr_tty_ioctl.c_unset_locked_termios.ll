; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_unset_locked_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_unset_locked_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios, %struct.ktermios }
%struct.ktermios = type { i64*, i64, i32, i32, i32, i32 }

@NCCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @unset_locked_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unset_locked_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  store %struct.ktermios* %9, %struct.ktermios** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  store %struct.ktermios* %11, %struct.ktermios** %6, align 8
  %12 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %13 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %16 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %24 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = or i32 %19, %26
  %28 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %29 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %31 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %34 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  %38 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %39 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %40, %43
  %45 = or i32 %37, %44
  %46 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %47 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %49 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %52 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %50, %54
  %56 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %57 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  %63 = or i32 %55, %62
  %64 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %65 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %67 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %70 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = xor i32 %71, -1
  %73 = and i32 %68, %72
  %74 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %75 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %78 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %76, %79
  %81 = or i32 %73, %80
  %82 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %83 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %85 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %2
  %89 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %90 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  br label %96

92:                                               ; preds = %2
  %93 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %94 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i64 [ %91, %88 ], [ %95, %92 ]
  %98 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %99 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %137, %96
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @NCCS, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %100
  %105 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %106 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %115 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  br label %129

121:                                              ; preds = %104
  %122 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %123 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  br label %129

129:                                              ; preds = %121, %113
  %130 = phi i64 [ %120, %113 ], [ %128, %121 ]
  %131 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %132 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 %130, i64* %136, align 8
  br label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %100

140:                                              ; preds = %100
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
