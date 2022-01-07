; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_send_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_send_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PORT_MDM = common dso_local global i64 0, align 8
@MAX_PORT = common dso_local global i64 0, align 8
@PORT_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nozomi*)* @send_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_flow_control(%struct.nozomi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nozomi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.nozomi* %0, %struct.nozomi** %3, align 8
  store i64 0, i64* %5, align 8
  %7 = load i64, i64* @PORT_MDM, align 8
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %62, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MAX_PORT, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %8
  %13 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %14 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %12
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %66

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %28 = call i32 @port2ctrl(i64 %26, %struct.nozomi* %27)
  %29 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %30 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 8
  %36 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %37 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = bitcast %struct.TYPE_3__* %41 to i32*
  store i32* %42, i32** %6, align 8
  %43 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %44 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* @PORT_CTRL, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = bitcast i32* %52 to i64*
  %54 = call i32 @write_mem32(i32 %51, i64* %53, i32 2)
  %55 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %56 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  store i64 1, i64* %5, align 8
  br label %61

61:                                               ; preds = %25, %12
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %4, align 8
  br label %8

65:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @port2ctrl(i64, %struct.nozomi*) #1

declare dso_local i32 @write_mem32(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
