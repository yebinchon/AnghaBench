; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_make_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_make_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vc_class = common dso_local global i32 0, align 4
@VCS_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vcs%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vcsu%u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vcsa%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcs_make_sysfs(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @vc_class, align 4
  %4 = load i32, i32* @VCS_MAJOR, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  %7 = call i32 @MKDEV(i32 %4, i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  %10 = call i32 @device_create(i32 %3, i32* null, i32 %7, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @vc_class, align 4
  %12 = load i32, i32* @VCS_MAJOR, align 4
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 65
  %15 = call i32 @MKDEV(i32 %12, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @device_create(i32 %11, i32* null, i32 %15, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @vc_class, align 4
  %20 = load i32, i32* @VCS_MAJOR, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 129
  %23 = call i32 @MKDEV(i32 %20, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @device_create(i32 %19, i32* null, i32 %23, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  ret void
}

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
