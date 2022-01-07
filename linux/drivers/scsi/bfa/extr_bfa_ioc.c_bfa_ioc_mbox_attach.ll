; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_mbox_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_mbox_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, %struct.bfa_ioc_mbox_mod_s }
%struct.bfa_ioc_mbox_mod_s = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@BFI_MC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_mbox_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_mbox_attach(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  %3 = alloca %struct.bfa_ioc_mbox_mod_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %5 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %5, i32 0, i32 1
  store %struct.bfa_ioc_mbox_mod_s* %6, %struct.bfa_ioc_mbox_mod_s** %3, align 8
  %7 = load %struct.bfa_ioc_mbox_mod_s*, %struct.bfa_ioc_mbox_mod_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_ioc_mbox_mod_s, %struct.bfa_ioc_mbox_mod_s* %7, i32 0, i32 1
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BFI_MC_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.bfa_ioc_mbox_mod_s*, %struct.bfa_ioc_mbox_mod_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_ioc_mbox_mod_s, %struct.bfa_ioc_mbox_mod_s* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bfa_ioc_mbox_mod_s*, %struct.bfa_ioc_mbox_mod_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_ioc_mbox_mod_s, %struct.bfa_ioc_mbox_mod_s* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %24, i32* %31, align 8
  br label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %10

35:                                               ; preds = %10
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
