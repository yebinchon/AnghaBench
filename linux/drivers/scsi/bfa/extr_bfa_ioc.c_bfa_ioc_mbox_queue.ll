; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_mbox_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_mbox_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__, %struct.bfa_ioc_mbox_mod_s }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_ioc_mbox_mod_s = type { i32 }
%struct.bfa_mbox_cmd_s = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_mbox_queue(%struct.bfa_ioc_s* %0, %struct.bfa_mbox_cmd_s* %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca %struct.bfa_mbox_cmd_s*, align 8
  %5 = alloca %struct.bfa_ioc_mbox_mod_s*, align 8
  %6 = alloca i64, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store %struct.bfa_mbox_cmd_s* %1, %struct.bfa_mbox_cmd_s** %4, align 8
  %7 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %7, i32 0, i32 1
  store %struct.bfa_ioc_mbox_mod_s* %8, %struct.bfa_ioc_mbox_mod_s** %5, align 8
  %9 = load %struct.bfa_ioc_mbox_mod_s*, %struct.bfa_ioc_mbox_mod_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfa_ioc_mbox_mod_s, %struct.bfa_ioc_mbox_mod_s* %9, i32 0, i32 0
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.bfa_mbox_cmd_s*, %struct.bfa_mbox_cmd_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s* %14, i32 0, i32 1
  %16 = load %struct.bfa_ioc_mbox_mod_s*, %struct.bfa_ioc_mbox_mod_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc_mbox_mod_s, %struct.bfa_ioc_mbox_mod_s* %16, i32 0, i32 0
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @readl(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.bfa_mbox_cmd_s*, %struct.bfa_mbox_cmd_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s* %28, i32 0, i32 1
  %30 = load %struct.bfa_ioc_mbox_mod_s*, %struct.bfa_ioc_mbox_mod_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_ioc_mbox_mod_s, %struct.bfa_ioc_mbox_mod_s* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  br label %39

33:                                               ; preds = %19
  %34 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %35 = load %struct.bfa_mbox_cmd_s*, %struct.bfa_mbox_cmd_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bfa_ioc_mbox_send(%struct.bfa_ioc_s* %34, i32 %37, i32 4)
  br label %39

39:                                               ; preds = %33, %27, %13
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @bfa_ioc_mbox_send(%struct.bfa_ioc_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
