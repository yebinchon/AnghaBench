; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_event_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tb*, i32, i8*, i64)* }

@.str = private unnamed_addr constant [36 x i8] c"domain does not have event handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @tb_domain_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_domain_event_cb(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tb*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tb*
  store %struct.tb* %12, %struct.tb** %10, align 8
  %13 = load %struct.tb*, %struct.tb** %10, align 8
  %14 = getelementptr inbounds %struct.tb, %struct.tb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.tb*, i32, i8*, i64)*, i32 (%struct.tb*, i32, i8*, i64)** %16, align 8
  %18 = icmp ne i32 (%struct.tb*, i32, i8*, i64)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load %struct.tb*, %struct.tb** %10, align 8
  %21 = call i32 @tb_warn(%struct.tb* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %30 [
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %22, %22
  %25 = load %struct.tb*, %struct.tb** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @tb_xdomain_handle_request(%struct.tb* %25, i32 %26, i8* %27, i64 %28)
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %22
  %31 = load %struct.tb*, %struct.tb** %10, align 8
  %32 = getelementptr inbounds %struct.tb, %struct.tb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.tb*, i32, i8*, i64)*, i32 (%struct.tb*, i32, i8*, i64)** %34, align 8
  %36 = load %struct.tb*, %struct.tb** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 %35(%struct.tb* %36, i32 %37, i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %24, %19
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @tb_warn(%struct.tb*, i8*) #1

declare dso_local i32 @tb_xdomain_handle_request(%struct.tb*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
