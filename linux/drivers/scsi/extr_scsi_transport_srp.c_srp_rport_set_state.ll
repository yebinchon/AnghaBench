; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_rport_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_rport_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rport = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rport*, i32)* @srp_rport_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_rport_set_state(%struct.srp_rport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.srp_rport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.srp_rport* %0, %struct.srp_rport** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.srp_rport*, %struct.srp_rport** %4, align 8
  %8 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.srp_rport*, %struct.srp_rport** %4, align 8
  %11 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %30 [
    i32 128, label %14
    i32 131, label %19
    i32 130, label %24
    i32 129, label %29
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %17 [
    i32 129, label %16
  ]

16:                                               ; preds = %14
  br label %34

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17
  br label %30

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %22 [
    i32 128, label %21
  ]

21:                                               ; preds = %19
  br label %23

22:                                               ; preds = %19
  br label %34

23:                                               ; preds = %21
  br label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %27 [
    i32 129, label %26
  ]

26:                                               ; preds = %24
  br label %34

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %2, %29, %28, %23, %18
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.srp_rport*, %struct.srp_rport** %4, align 8
  %33 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %37

34:                                               ; preds = %26, %22, %16
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
