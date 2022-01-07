; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_parport_uss720_ecp_write_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_parport_uss720_ecp_write_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@ECR_ECP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ECR_PS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parport*, i8*, i64, i32)* @parport_uss720_ecp_write_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parport_uss720_ecp_write_addr(%struct.parport* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.parport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.parport* %0, %struct.parport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.parport*, %struct.parport** %6, align 8
  %12 = load i32, i32* @ECR_ECP, align 4
  %13 = call i64 @change_mode(%struct.parport* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %40

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.parport*, %struct.parport** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @set_1284_register(%struct.parport* %22, i32 5, i8 signext %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %35

29:                                               ; preds = %21
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8
  br label %17

35:                                               ; preds = %28, %17
  %36 = load %struct.parport*, %struct.parport** %6, align 8
  %37 = load i32, i32* @ECR_PS2, align 4
  %38 = call i64 @change_mode(%struct.parport* %36, i32 %37)
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %35, %15
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local i64 @change_mode(%struct.parport*, i32) #1

declare dso_local i64 @set_1284_register(%struct.parport*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
