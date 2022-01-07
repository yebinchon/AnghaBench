; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_parport_uss720_data_reverse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_parport_uss720_data_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport_uss720_private* }
%struct.parport_uss720_private = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @parport_uss720_data_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_uss720_data_reverse(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.parport_uss720_private*, align 8
  %4 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %2, align 8
  %5 = load %struct.parport*, %struct.parport** %2, align 8
  %6 = getelementptr inbounds %struct.parport, %struct.parport* %5, i32 0, i32 0
  %7 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %6, align 8
  store %struct.parport_uss720_private* %7, %struct.parport_uss720_private** %3, align 8
  %8 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %3, align 8
  %9 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, 32
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %4, align 1
  %15 = load %struct.parport*, %struct.parport** %2, align 8
  %16 = load i8, i8* %4, align 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @set_1284_register(%struct.parport* %15, i32 2, i8 zeroext %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %28

21:                                               ; preds = %1
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %3, align 8
  %25 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @set_1284_register(%struct.parport*, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
