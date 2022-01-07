; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_r8712_do_queue_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_r8712_do_queue_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.dvobj_priv }
%struct.dvobj_priv = type { i32 }
%struct.pkt_attrib = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_do_queue_select(%struct._adapter* %0, %struct.pkt_attrib* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvobj_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 0
  store %struct.dvobj_priv* %8, %struct.dvobj_priv** %6, align 8
  %9 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %10 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %15 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  br label %61

18:                                               ; preds = %2
  %19 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %20 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %25 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %23
  store i32 3, i32* %5, align 4
  br label %59

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34
  store i32 1, i32* %5, align 4
  br label %58

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41
  store i32 5, i32* %5, align 4
  br label %57

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  store i32 7, i32* %5, align 4
  br label %56

55:                                               ; preds = %51
  store i32 3, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %47
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59, %18
  br label %61

61:                                               ; preds = %60, %13
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %64 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
