; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_ldisc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_ldisc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.spk_ldisc_data*, %struct.TYPE_2__* }
%struct.spk_ldisc_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@speakup_tty = common dso_local global %struct.tty_struct* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @spk_ttyio_ldisc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spk_ttyio_ldisc_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.spk_ldisc_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  store %struct.tty_struct* %15, %struct.tty_struct** @speakup_tty, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.spk_ldisc_data* @kmalloc(i32 8, i32 %16)
  store %struct.spk_ldisc_data* %17, %struct.spk_ldisc_data** %4, align 8
  %18 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %4, align 8
  %19 = icmp ne %struct.spk_ldisc_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %32

23:                                               ; preds = %14
  %24 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %4, align 8
  %25 = getelementptr inbounds %struct.spk_ldisc_data, %struct.spk_ldisc_data* %24, i32 0, i32 1
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %4, align 8
  %28 = getelementptr inbounds %struct.spk_ldisc_data, %struct.spk_ldisc_data* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %4, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** @speakup_tty, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 0
  store %struct.spk_ldisc_data* %29, %struct.spk_ldisc_data** %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %23, %20, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.spk_ldisc_data* @kmalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
