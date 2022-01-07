; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_put_wrb_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_put_wrb_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwi_wrb_context = type { i64, i32, i32, %struct.wrb_handle** }
%struct.wrb_handle = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwi_wrb_context*, %struct.wrb_handle*, i32)* @beiscsi_put_wrb_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_put_wrb_handle(%struct.hwi_wrb_context* %0, %struct.wrb_handle* %1, i32 %2) #0 {
  %4 = alloca %struct.hwi_wrb_context*, align 8
  %5 = alloca %struct.wrb_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hwi_wrb_context* %0, %struct.hwi_wrb_context** %4, align 8
  store %struct.wrb_handle* %1, %struct.wrb_handle** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %4, align 8
  %9 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %13 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %4, align 8
  %14 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %13, i32 0, i32 3
  %15 = load %struct.wrb_handle**, %struct.wrb_handle*** %14, align 8
  %16 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %4, align 8
  %17 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %15, i64 %18
  store %struct.wrb_handle* %12, %struct.wrb_handle** %19, align 8
  %20 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %4, align 8
  %21 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %4, align 8
  %25 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %4, align 8
  %33 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %4, align 8
  %36 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %41 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %4, align 8
  %43 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %42, i32 0, i32 1
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
