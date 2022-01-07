; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_put_partner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_put_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altmode = type { %struct.altmode*, i32**, %struct.typec_altmode }
%struct.typec_altmode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.typec_plug = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altmode*)* @typec_altmode_put_partner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typec_altmode_put_partner(%struct.altmode* %0) #0 {
  %2 = alloca %struct.altmode*, align 8
  %3 = alloca %struct.altmode*, align 8
  %4 = alloca %struct.typec_altmode*, align 8
  %5 = alloca %struct.typec_plug*, align 8
  store %struct.altmode* %0, %struct.altmode** %2, align 8
  %6 = load %struct.altmode*, %struct.altmode** %2, align 8
  %7 = getelementptr inbounds %struct.altmode, %struct.altmode* %6, i32 0, i32 0
  %8 = load %struct.altmode*, %struct.altmode** %7, align 8
  store %struct.altmode* %8, %struct.altmode** %3, align 8
  %9 = load %struct.altmode*, %struct.altmode** %3, align 8
  %10 = icmp ne %struct.altmode* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.altmode*, %struct.altmode** %3, align 8
  %14 = getelementptr inbounds %struct.altmode, %struct.altmode* %13, i32 0, i32 2
  store %struct.typec_altmode* %14, %struct.typec_altmode** %4, align 8
  %15 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %16 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @is_typec_plug(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %12
  %22 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %23 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.typec_plug* @to_typec_plug(i32 %25)
  store %struct.typec_plug* %26, %struct.typec_plug** %5, align 8
  %27 = load %struct.altmode*, %struct.altmode** %3, align 8
  %28 = getelementptr inbounds %struct.altmode, %struct.altmode* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.typec_plug*, %struct.typec_plug** %5, align 8
  %31 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  store i32* null, i32** %33, align 8
  br label %37

34:                                               ; preds = %12
  %35 = load %struct.altmode*, %struct.altmode** %3, align 8
  %36 = getelementptr inbounds %struct.altmode, %struct.altmode* %35, i32 0, i32 0
  store %struct.altmode* null, %struct.altmode** %36, align 8
  br label %37

37:                                               ; preds = %34, %21
  %38 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %39 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %38, i32 0, i32 0
  %40 = call i32 @put_device(%struct.TYPE_2__* %39)
  br label %41

41:                                               ; preds = %37, %11
  ret void
}

declare dso_local i64 @is_typec_plug(i32) #1

declare dso_local %struct.typec_plug* @to_typec_plug(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
