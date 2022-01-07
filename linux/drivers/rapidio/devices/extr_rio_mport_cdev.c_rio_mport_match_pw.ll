; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_rio_mport_cdev.c_rio_mport_match_pw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_rio_mport_cdev.c_rio_mport_match_pw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.rio_pw_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rio_pw_filter = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.rio_pw_msg*, %struct.rio_pw_filter*)* @rio_mport_match_pw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_mport_match_pw(%union.rio_pw_msg* %0, %struct.rio_pw_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.rio_pw_msg*, align 8
  %5 = alloca %struct.rio_pw_filter*, align 8
  store %union.rio_pw_msg* %0, %union.rio_pw_msg** %4, align 8
  store %struct.rio_pw_filter* %1, %struct.rio_pw_filter** %5, align 8
  %6 = load %union.rio_pw_msg*, %union.rio_pw_msg** %4, align 8
  %7 = bitcast %union.rio_pw_msg* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rio_pw_filter*, %struct.rio_pw_filter** %5, align 8
  %11 = getelementptr inbounds %struct.rio_pw_filter, %struct.rio_pw_filter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %9, %12
  %14 = load %struct.rio_pw_filter*, %struct.rio_pw_filter** %5, align 8
  %15 = getelementptr inbounds %struct.rio_pw_filter, %struct.rio_pw_filter* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %2
  %19 = load %union.rio_pw_msg*, %union.rio_pw_msg** %4, align 8
  %20 = bitcast %union.rio_pw_msg* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rio_pw_filter*, %struct.rio_pw_filter** %5, align 8
  %24 = getelementptr inbounds %struct.rio_pw_filter, %struct.rio_pw_filter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = load %struct.rio_pw_filter*, %struct.rio_pw_filter** %5, align 8
  %28 = getelementptr inbounds %struct.rio_pw_filter, %struct.rio_pw_filter* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
