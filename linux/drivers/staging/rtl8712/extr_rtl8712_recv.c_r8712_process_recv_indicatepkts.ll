; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_process_recv_indicatepkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_process_recv_indicatepkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, i32, %struct.mlme_priv }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i32 }
%union.recv_frame = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, %union.recv_frame*)* @r8712_process_recv_indicatepkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8712_process_recv_indicatepkts(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca %struct.ht_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %union.recv_frame* %1, %union.recv_frame** %5, align 8
  %9 = load i32, i32* @_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct._adapter*, %struct._adapter** %4, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 2
  store %struct.mlme_priv* %11, %struct.mlme_priv** %7, align 8
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %13 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %12, i32 0, i32 0
  store %struct.ht_priv* %13, %struct.ht_priv** %8, align 8
  %14 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %15 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct._adapter*, %struct._adapter** %4, align 8
  %20 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %21 = call i64 @recv_indicatepkt_reorder(%struct._adapter* %19, %union.recv_frame* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct._adapter*, %struct._adapter** %4, align 8
  %25 = getelementptr inbounds %struct._adapter, %struct._adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct._adapter*, %struct._adapter** %4, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @_FAIL, align 4
  store i32 %34, i32* %3, align 4
  br label %63

35:                                               ; preds = %28, %23
  br label %36

36:                                               ; preds = %35, %18
  br label %61

37:                                               ; preds = %2
  %38 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %39 = call i32 @r8712_wlanhdr_to_ethhdr(%union.recv_frame* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @_FAIL, align 4
  store i32 %43, i32* %3, align 4
  br label %63

44:                                               ; preds = %37
  %45 = load %struct._adapter*, %struct._adapter** %4, align 8
  %46 = getelementptr inbounds %struct._adapter, %struct._adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load %struct._adapter*, %struct._adapter** %4, align 8
  %51 = getelementptr inbounds %struct._adapter, %struct._adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load %struct._adapter*, %struct._adapter** %4, align 8
  %56 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %57 = call i32 @r8712_recv_indicatepkt(%struct._adapter* %55, %union.recv_frame* %56)
  br label %60

58:                                               ; preds = %49, %44
  %59 = load i32, i32* @_FAIL, align 4
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %58, %42, %33
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @recv_indicatepkt_reorder(%struct._adapter*, %union.recv_frame*) #1

declare dso_local i32 @r8712_wlanhdr_to_ethhdr(%union.recv_frame*) #1

declare dso_local i32 @r8712_recv_indicatepkt(%struct._adapter*, %union.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
