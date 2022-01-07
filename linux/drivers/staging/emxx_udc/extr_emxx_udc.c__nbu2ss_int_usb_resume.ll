; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_int_usb_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_int_usb_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*)* @_nbu2ss_int_usb_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_int_usb_resume(%struct.nbu2ss_udc* %0) #0 {
  %2 = alloca %struct.nbu2ss_udc*, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %2, align 8
  %3 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %4 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %9 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %11 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %7
  %15 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %16 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32*)*, i32 (i32*)** %18, align 8
  %20 = icmp ne i32 (i32*)* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %23 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %26 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  %30 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %31 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %30, i32 0, i32 2
  %32 = call i32 %29(i32* %31)
  %33 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %34 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  br label %36

36:                                               ; preds = %21, %14, %7
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
