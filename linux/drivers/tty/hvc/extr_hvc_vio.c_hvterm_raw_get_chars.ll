; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_hvterm_raw_get_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_hvterm_raw_get_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvterm_priv = type { i64, i64, i8*, i32, i32 }

@hvterm_privs = common dso_local global %struct.hvterm_priv** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @hvterm_raw_get_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvterm_raw_get_chars(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hvterm_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.hvterm_priv**, %struct.hvterm_priv*** @hvterm_privs, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.hvterm_priv*, %struct.hvterm_priv** %12, i64 %13
  %15 = load %struct.hvterm_priv*, %struct.hvterm_priv** %14, align 8
  store %struct.hvterm_priv* %15, %struct.hvterm_priv** %8, align 8
  %16 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %17 = icmp ne %struct.hvterm_priv* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %137

23:                                               ; preds = %3
  %24 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %25 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %24, i32 0, i32 3
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %29 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %104

32:                                               ; preds = %23
  %33 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %34 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %36 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %39 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @hvc_get_chars(i32 %37, i8* %40, i32 %41)
  %43 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %44 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  store i64 1, i64* %9, align 8
  br label %45

45:                                               ; preds = %100, %32
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %48 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %103

51:                                               ; preds = %45
  %52 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %53 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %51
  %61 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %62 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 13
  br i1 %69, label %70, label %99

70:                                               ; preds = %60
  %71 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %72 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %72, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %77 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %70
  %81 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %82 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %87 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %93 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub i64 %94, %95
  %97 = call i32 @memmove(i8* %85, i8* %91, i64 %96)
  br label %98

98:                                               ; preds = %80, %70
  br label %99

99:                                               ; preds = %98, %60, %51
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %9, align 8
  br label %45

103:                                              ; preds = %45
  br label %104

104:                                              ; preds = %103, %23
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %107 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @min(i32 %105, i64 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %112 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %115 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @memcpy(i8* %110, i8* %117, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %123 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %129 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %133 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %132, i32 0, i32 3
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %104, %22
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @hvc_get_chars(i32, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
