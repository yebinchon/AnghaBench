; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32, i32 }
%struct.uni_screen = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @vc_uniscr_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_uniscr_delete(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_screen*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %10 = call %struct.uni_screen* @get_vc_uniscr(%struct.vc_data* %9)
  store %struct.uni_screen* %10, %struct.uni_screen** %5, align 8
  %11 = load %struct.uni_screen*, %struct.uni_screen** %5, align 8
  %12 = icmp ne %struct.uni_screen* %11, null
  br i1 %12, label %13, label %55

13:                                               ; preds = %2
  %14 = load %struct.uni_screen*, %struct.uni_screen** %5, align 8
  %15 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub i32 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = sub i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i32* %31, i32* %37, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @memset32(i32* %52, i8 signext 32, i32 %53)
  br label %55

55:                                               ; preds = %13, %2
  ret void
}

declare dso_local %struct.uni_screen* @get_vc_uniscr(%struct.vc_data*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset32(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
