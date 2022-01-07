; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_sync_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_sync_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFI_IOC_FAIL = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc_s*)* @bfa_ioc_ct_sync_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_ct_sync_complete(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bfa_ioc_ct_get_sync_reqd(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_ioc_ct_get_sync_ackd(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @BFA_TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %79

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %25 = call i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc_s* %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %31 = call i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc_s* %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %36 = call i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc_s* %35)
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %28, %21
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @bfa_ioc_ct_clear_sync_ackd(i32 %44)
  %46 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @writel(i32 %45, i32 %49)
  %51 = load i32, i32* @BFI_IOC_FAIL, align 4
  %52 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @writel(i32 %51, i32 %55)
  %57 = load i32, i32* @BFI_IOC_FAIL, align 4
  %58 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @writel(i32 %57, i32 %61)
  %63 = load i32, i32* @BFA_TRUE, align 4
  store i32 %63, i32* %2, align 4
  br label %79

64:                                               ; preds = %39
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @writel(i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %68, %64
  %78 = load i32, i32* @BFA_FALSE, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %43, %19
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @bfa_ioc_ct_get_sync_reqd(i32) #1

declare dso_local i32 @bfa_ioc_ct_get_sync_ackd(i32) #1

declare dso_local i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc_s*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_ioc_ct_clear_sync_ackd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
