; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_get_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_get_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_priv = type { i64, i32, i32, i32, i32*, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"HVSI@%x: returning -EPIPE\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hvsilib_get_chars(%struct.hvsi_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hvsi_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hvsi_priv* %0, %struct.hvsi_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %12 = icmp ne %struct.hvsi_priv* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %138

20:                                               ; preds = %3
  %21 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %22 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %138

26:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %121, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %31, 2
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  br i1 %34, label %35, label %124

35:                                               ; preds = %33
  %36 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %37 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %43 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @min(i32 %41, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %52 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %55 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @memcpy(i8* %50, i32* %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %63 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %69 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %40, %35
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %124

82:                                               ; preds = %78
  %83 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %84 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %82
  %88 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %89 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %92 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  %97 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %98 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %101 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %104 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %108 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @memmove(i32* %99, i32* %106, i32 %109)
  %111 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %112 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %87, %82
  %114 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %115 = call i64 @hvsi_get_packet(%struct.hvsi_priv* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, -1
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %27

124:                                              ; preds = %81, %33
  %125 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %126 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %124
  %130 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %131 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pr_devel(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @EPIPE, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %138

136:                                              ; preds = %124
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %129, %25, %17
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i64 @hvsi_get_packet(%struct.hvsi_priv*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
