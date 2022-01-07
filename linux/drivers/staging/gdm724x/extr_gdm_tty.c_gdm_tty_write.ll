; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_gdm_tty_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_gdm_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gdm* }
%struct.gdm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i8*, i32, i32, i32, %struct.gdm*)* }

@ENODEV = common dso_local global i32 0, align 4
@MUX_TX_MAX_SIZE = common dso_local global i32 0, align 4
@gdm_tty_send_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @gdm_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_tty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gdm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.gdm*, %struct.gdm** %13, align 8
  store %struct.gdm* %14, %struct.gdm** %8, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.gdm*, %struct.gdm** %8, align 8
  %17 = call i32 @GDM_TTY_READY(%struct.gdm* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %64

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %64

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %61
  %28 = load i32, i32* @MUX_TX_MAX_SIZE, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.gdm*, %struct.gdm** %8, align 8
  %32 = getelementptr inbounds %struct.gdm, %struct.gdm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32 (i32, i8*, i32, i32, i32, %struct.gdm*)*, i32 (i32, i8*, i32, i32, i32, %struct.gdm*)** %34, align 8
  %36 = load %struct.gdm*, %struct.gdm** %8, align 8
  %37 = getelementptr inbounds %struct.gdm, %struct.gdm* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.gdm*, %struct.gdm** %8, align 8
  %47 = getelementptr inbounds %struct.gdm, %struct.gdm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @gdm_tty_send_complete, align 4
  %50 = load %struct.gdm*, %struct.gdm** %8, align 8
  %51 = call i32 %35(i32 %40, i8* %44, i32 %45, i32 %48, i32 %49, %struct.gdm* %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %27
  br label %62

61:                                               ; preds = %27
  br label %27

62:                                               ; preds = %60
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %25, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @GDM_TTY_READY(%struct.gdm*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
