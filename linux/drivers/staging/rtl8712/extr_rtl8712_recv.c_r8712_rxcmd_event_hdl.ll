; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_rxcmd_event_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_rxcmd_event_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.recv_stat = type { i32 }

@RXDESC_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_rxcmd_event_hdl(%struct._adapter* %0, i8* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.recv_stat*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.recv_stat*
  store %struct.recv_stat* %15, %struct.recv_stat** %9, align 8
  %16 = load %struct.recv_stat*, %struct.recv_stat** %9, align 8
  %17 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = and i32 %19, 983040
  %21 = ashr i32 %20, 16
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 3
  store i32 %23, i32* %8, align 4
  %24 = load i64, i64* @RXDESC_SIZE, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 %27
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %44, %2
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = and i32 %34, 65535
  store i32 %35, i32* %7, align 4
  %36 = load %struct._adapter*, %struct._adapter** %3, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @r8712_event_handle(%struct._adapter* %36, i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 8
  %41 = load i32*, i32** %6, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %6, align 8
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = call i32 @BIT(i32 31)
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %30, label %50

50:                                               ; preds = %44
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @r8712_event_handle(%struct._adapter*, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
