; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_gigaset_initcshw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_gigaset_initcshw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32, i32, i32, i32, i32, i32, %struct.cardstate*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IP_MSGSIZE = common dso_local global i32 0, align 4
@req_timeout = common dso_local global i32 0, align 4
@atrdy_timeout = common dso_local global i32 0, align 4
@cmd_in_timeout = common dso_local global i32 0, align 4
@int_in_resubmit = common dso_local global i32 0, align 4
@int_in_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*)* @gigaset_initcshw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_initcshw(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.bas_cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.bas_cardstate* @kzalloc(i32 40, i32 %5)
  store %struct.bas_cardstate* %6, %struct.bas_cardstate** %4, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.bas_cardstate* %6, %struct.bas_cardstate** %9, align 8
  %10 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %11 = icmp ne %struct.bas_cardstate* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  %17 = load i32, i32* @IP_MSGSIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %21 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %23 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %28 = call i32 @kfree(%struct.bas_cardstate* %27)
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %16
  %33 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %34 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %33, i32 0, i32 7
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %37 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %38 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %37, i32 0, i32 6
  store %struct.cardstate* %36, %struct.cardstate** %38, align 8
  %39 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %40 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %39, i32 0, i32 5
  %41 = load i32, i32* @req_timeout, align 4
  %42 = call i32 @timer_setup(i32* %40, i32 %41, i32 0)
  %43 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %44 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %43, i32 0, i32 4
  %45 = load i32, i32* @atrdy_timeout, align 4
  %46 = call i32 @timer_setup(i32* %44, i32 %45, i32 0)
  %47 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %48 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %47, i32 0, i32 3
  %49 = load i32, i32* @cmd_in_timeout, align 4
  %50 = call i32 @timer_setup(i32* %48, i32 %49, i32 0)
  %51 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %52 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %51, i32 0, i32 2
  %53 = load i32, i32* @int_in_resubmit, align 4
  %54 = call i32 @timer_setup(i32* %52, i32 %53, i32 0)
  %55 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %56 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %55, i32 0, i32 1
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %59 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %58, i32 0, i32 0
  %60 = load i32, i32* @int_in_work, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %32, %26, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.bas_cardstate* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.bas_cardstate*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
