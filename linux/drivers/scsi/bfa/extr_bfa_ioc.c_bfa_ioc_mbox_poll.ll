; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_mbox_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_mbox_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__, %struct.bfa_ioc_mbox_mod_s }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_ioc_mbox_mod_s = type { i32 }
%struct.bfa_mbox_cmd_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_mbox_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_mbox_poll(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  %3 = alloca %struct.bfa_ioc_mbox_mod_s*, align 8
  %4 = alloca %struct.bfa_mbox_cmd_s*, align 8
  %5 = alloca i64, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %6 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %6, i32 0, i32 1
  store %struct.bfa_ioc_mbox_mod_s* %7, %struct.bfa_ioc_mbox_mod_s** %3, align 8
  %8 = load %struct.bfa_ioc_mbox_mod_s*, %struct.bfa_ioc_mbox_mod_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc_mbox_mod_s, %struct.bfa_ioc_mbox_mod_s* %8, i32 0, i32 0
  %10 = call i64 @list_empty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %15 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @readl(i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %31

22:                                               ; preds = %13
  %23 = load %struct.bfa_ioc_mbox_mod_s*, %struct.bfa_ioc_mbox_mod_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_ioc_mbox_mod_s, %struct.bfa_ioc_mbox_mod_s* %23, i32 0, i32 0
  %25 = call i32 @bfa_q_deq(i32* %24, %struct.bfa_mbox_cmd_s** %4)
  %26 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %27 = load %struct.bfa_mbox_cmd_s*, %struct.bfa_mbox_cmd_s** %4, align 8
  %28 = getelementptr inbounds %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bfa_ioc_mbox_send(%struct.bfa_ioc_s* %26, i32 %29, i32 4)
  br label %31

31:                                               ; preds = %22, %21, %12
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.bfa_mbox_cmd_s**) #1

declare dso_local i32 @bfa_ioc_mbox_send(%struct.bfa_ioc_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
