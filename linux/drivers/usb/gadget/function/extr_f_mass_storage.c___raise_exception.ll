; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c___raise_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c___raise_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32, i32, i64, i8*, i32, i32 }

@SIGUSR1 = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsg_common*, i32, i8*)* @__raise_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__raise_exception(%struct.fsg_common* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.fsg_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.fsg_common* %0, %struct.fsg_common** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %9 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %13 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %19 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %22 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %25 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %28 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %30 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load i32, i32* @SIGUSR1, align 4
  %35 = load i32, i32* @SEND_SIG_PRIV, align 4
  %36 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %37 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @send_sig_info(i32 %34, i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %33, %17
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %43 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %42, i32 0, i32 1
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @send_sig_info(i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
