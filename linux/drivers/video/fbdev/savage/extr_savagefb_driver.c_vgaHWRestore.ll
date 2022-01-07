; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_vgaHWRestore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_vgaHWRestore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { i32 }
%struct.savage_reg = type { i32*, i32*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savagefb_par*, %struct.savage_reg*)* @vgaHWRestore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgaHWRestore(%struct.savagefb_par* %0, %struct.savage_reg* %1) #0 {
  %3 = alloca %struct.savagefb_par*, align 8
  %4 = alloca %struct.savage_reg*, align 8
  %5 = alloca i32, align 4
  store %struct.savagefb_par* %0, %struct.savagefb_par** %3, align 8
  store %struct.savage_reg* %1, %struct.savage_reg** %4, align 8
  %6 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %7 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %10 = call i32 @VGAwMISC(i32 %8, %struct.savagefb_par* %9)
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %17 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %24 = call i32 @VGAwSEQ(i32 %15, i32 %22, %struct.savagefb_par* %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %11
  %29 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %30 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 17
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, -129
  %35 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %36 = call i32 @VGAwCR(i32 17, i32 %34, %struct.savagefb_par* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %51, %28
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 25
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %43 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %50 = call i32 @VGAwCR(i32 %41, i32 %48, %struct.savagefb_par* %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %37

54:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %69, %54
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 9
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %61 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %68 = call i32 @VGAwGR(i32 %59, i32 %66, %struct.savagefb_par* %67)
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %55

72:                                               ; preds = %55
  %73 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %74 = call i32 @VGAenablePalette(%struct.savagefb_par* %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %89, %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 21
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %81 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %88 = call i32 @VGAwATTR(i32 %79, i32 %86, %struct.savagefb_par* %87)
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %75

92:                                               ; preds = %75
  %93 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %94 = call i32 @VGAdisablePalette(%struct.savagefb_par* %93)
  ret void
}

declare dso_local i32 @VGAwMISC(i32, %struct.savagefb_par*) #1

declare dso_local i32 @VGAwSEQ(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @VGAwCR(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @VGAwGR(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @VGAenablePalette(%struct.savagefb_par*) #1

declare dso_local i32 @VGAwATTR(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @VGAdisablePalette(%struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
