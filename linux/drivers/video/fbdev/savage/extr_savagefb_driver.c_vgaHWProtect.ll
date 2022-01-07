; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_vgaHWProtect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_vgaHWProtect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savagefb_par*, i32)* @vgaHWProtect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgaHWProtect(%struct.savagefb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.savagefb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.savagefb_par* %0, %struct.savagefb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %10 = call zeroext i8 @VGArSEQ(i32 1, %struct.savagefb_par* %9)
  store i8 %10, i8* %5, align 1
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %12 = call i32 @vgaHWSeqReset(%struct.savagefb_par* %11, i32 1)
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %14, 32
  %16 = trunc i32 %15 to i8
  %17 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %18 = call i32 @VGAwSEQ(i32 1, i8 zeroext %16, %struct.savagefb_par* %17)
  %19 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %20 = call i32 @VGAenablePalette(%struct.savagefb_par* %19)
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %23 = call zeroext i8 @VGArSEQ(i32 1, %struct.savagefb_par* %22)
  store i8 %23, i8* %5, align 1
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, -33
  %27 = trunc i32 %26 to i8
  %28 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %29 = call i32 @VGAwSEQ(i32 1, i8 zeroext %27, %struct.savagefb_par* %28)
  %30 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %31 = call i32 @vgaHWSeqReset(%struct.savagefb_par* %30, i32 0)
  %32 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %33 = call i32 @VGAdisablePalette(%struct.savagefb_par* %32)
  br label %34

34:                                               ; preds = %21, %8
  ret void
}

declare dso_local zeroext i8 @VGArSEQ(i32, %struct.savagefb_par*) #1

declare dso_local i32 @vgaHWSeqReset(%struct.savagefb_par*, i32) #1

declare dso_local i32 @VGAwSEQ(i32, i8 zeroext, %struct.savagefb_par*) #1

declare dso_local i32 @VGAenablePalette(%struct.savagefb_par*) #1

declare dso_local i32 @VGAdisablePalette(%struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
