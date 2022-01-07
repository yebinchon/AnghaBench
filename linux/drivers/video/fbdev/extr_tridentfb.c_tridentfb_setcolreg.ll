; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.tridentfb_par*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.tridentfb_par = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VGA_PEL_MSK = common dso_local global i32 0, align 4
@VGA_PEL_IW = common dso_local global i32 0, align 4
@VGA_PEL_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @tridentfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tridentfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tridentfb_par*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %14, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  %23 = load %struct.tridentfb_par*, %struct.tridentfb_par** %22, align 8
  store %struct.tridentfb_par* %23, %struct.tridentfb_par** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp uge i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %115

31:                                               ; preds = %6
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load %struct.tridentfb_par*, %struct.tridentfb_par** %15, align 8
  %36 = load i32, i32* @VGA_PEL_MSK, align 4
  %37 = call i32 @t_outb(%struct.tridentfb_par* %35, i32 255, i32 %36)
  %38 = load %struct.tridentfb_par*, %struct.tridentfb_par** %15, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @VGA_PEL_IW, align 4
  %41 = call i32 @t_outb(%struct.tridentfb_par* %38, i32 %39, i32 %40)
  %42 = load %struct.tridentfb_par*, %struct.tridentfb_par** %15, align 8
  %43 = load i32, i32* %9, align 4
  %44 = lshr i32 %43, 10
  %45 = load i32, i32* @VGA_PEL_D, align 4
  %46 = call i32 @t_outb(%struct.tridentfb_par* %42, i32 %44, i32 %45)
  %47 = load %struct.tridentfb_par*, %struct.tridentfb_par** %15, align 8
  %48 = load i32, i32* %10, align 4
  %49 = lshr i32 %48, 10
  %50 = load i32, i32* @VGA_PEL_D, align 4
  %51 = call i32 @t_outb(%struct.tridentfb_par* %47, i32 %49, i32 %50)
  %52 = load %struct.tridentfb_par*, %struct.tridentfb_par** %15, align 8
  %53 = load i32, i32* %11, align 4
  %54 = lshr i32 %53, 10
  %55 = load i32, i32* @VGA_PEL_D, align 4
  %56 = call i32 @t_outb(%struct.tridentfb_par* %52, i32 %54, i32 %55)
  br label %114

57:                                               ; preds = %31
  %58 = load i32, i32* %8, align 4
  %59 = icmp ult i32 %58, 16
  br i1 %59, label %60, label %113

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 16
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 63488
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 64512
  %68 = lshr i32 %67, 5
  %69 = or i32 %65, %68
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 63488
  %72 = lshr i32 %71, 11
  %73 = or i32 %69, %72
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %16, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %78, i32* %85, align 4
  br label %112

86:                                               ; preds = %60
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 65280
  %92 = shl i32 %91, 16
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, 65280
  %95 = shl i32 %94, 8
  %96 = or i32 %92, %95
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 65280
  %99 = or i32 %96, %98
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, 65280
  %102 = lshr i32 %101, 8
  %103 = or i32 %99, %102
  %104 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i32*
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %103, i32* %110, align 4
  br label %111

111:                                              ; preds = %89, %86
  br label %112

112:                                              ; preds = %111, %63
  br label %113

113:                                              ; preds = %112, %57
  br label %114

114:                                              ; preds = %113, %34
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %114, %30
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @t_outb(%struct.tridentfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
