; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-ctl.c_create_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-ctl.c_create_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_chip = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_chip*, i64, %struct.snd_kcontrol_new*)* @create_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ctls(%struct.bcm2835_chip* %0, i64 %1, %struct.snd_kcontrol_new* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_kcontrol_new*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcm2835_chip* %0, %struct.bcm2835_chip** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.snd_kcontrol_new* %2, %struct.snd_kcontrol_new** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %17 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %19, i64 %21
  %23 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %24 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %22, %struct.bcm2835_chip* %23)
  %25 = call i32 @snd_ctl_add(i32 %18, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %10

34:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.bcm2835_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
