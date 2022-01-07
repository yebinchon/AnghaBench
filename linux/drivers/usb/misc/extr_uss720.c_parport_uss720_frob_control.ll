; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_parport_uss720_frob_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_parport_uss720_frob_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport_uss720_private* }
%struct.parport_uss720_private = type { i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*, i8, i8)* @parport_uss720_frob_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parport_uss720_frob_control(%struct.parport* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.parport_uss720_private*, align 8
  %9 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load %struct.parport*, %struct.parport** %5, align 8
  %11 = getelementptr inbounds %struct.parport, %struct.parport* %10, i32 0, i32 0
  %12 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %11, align 8
  store %struct.parport_uss720_private* %12, %struct.parport_uss720_private** %8, align 8
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 15
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %6, align 1
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %7, align 1
  %21 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %8, align 8
  %22 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 %30, %32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %9, align 1
  %35 = load %struct.parport*, %struct.parport** %5, align 8
  %36 = load i8, i8* %9, align 1
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i64 @set_1284_register(%struct.parport* %35, i32 2, i8 zeroext %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %51

41:                                               ; preds = %3
  %42 = load i8, i8* %9, align 1
  %43 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %8, align 8
  %44 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %42, i8* %46, align 1
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 15
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %4, align 1
  br label %51

51:                                               ; preds = %41, %40
  %52 = load i8, i8* %4, align 1
  ret i8 %52
}

declare dso_local i64 @set_1284_register(%struct.parport*, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
