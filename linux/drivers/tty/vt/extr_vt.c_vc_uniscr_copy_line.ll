; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_copy_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_copy_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64, i64, i32 }
%struct.uni_screen = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_uniscr_copy_line(%struct.vc_data* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.uni_screen*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %21 = call %struct.uni_screen* @get_vc_uniscr(%struct.vc_data* %20)
  store %struct.uni_screen* %21, %struct.uni_screen** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul i32 %22, %25
  %27 = load i32, i32* %11, align 4
  %28 = mul i32 %27, 2
  %29 = add i32 %26, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.uni_screen*, %struct.uni_screen** %13, align 8
  %31 = icmp ne %struct.uni_screen* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @screenpos(%struct.vc_data* %35, i32 %36, i32 %37)
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  %40 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %6
  %45 = load i64, i64* %15, align 8
  %46 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %44
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  %56 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = zext i32 %58 to i64
  %60 = udiv i64 %55, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i64, i64* %15, align 8
  %63 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  %67 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = zext i32 %69 to i64
  %71 = urem i64 %66, %70
  %72 = udiv i64 %71, 2
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.uni_screen*, %struct.uni_screen** %13, align 8
  %76 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32 @memcpy(i8* %74, i32* %84, i32 %88)
  br label %116

90:                                               ; preds = %44, %6
  %91 = load i64, i64* %15, align 8
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %16, align 8
  %93 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %94 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, 255
  store i32 %96, i32* %17, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = bitcast i8* %97 to i32*
  store i32* %98, i32** %18, align 8
  br label %99

99:                                               ; preds = %103, %90
  %100 = load i32, i32* %12, align 4
  %101 = add i32 %100, -1
  store i32 %101, i32* %12, align 4
  %102 = icmp ne i32 %100, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i32*, i32** %16, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %16, align 8
  %106 = ptrtoint i32* %104 to i32
  %107 = call i32 @scr_readw(i32 %106)
  %108 = load i32, i32* %17, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %19, align 4
  %110 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @inverse_translate(%struct.vc_data* %110, i32 %111, i32 1)
  %113 = load i32*, i32** %18, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %18, align 8
  store i32 %112, i32* %113, align 4
  br label %99

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %115, %50
  ret void
}

declare dso_local %struct.uni_screen* @get_vc_uniscr(%struct.vc_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @screenpos(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @scr_readw(i32) #1

declare dso_local i32 @inverse_translate(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
