; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvSafeResetRx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvSafeResetRx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32, i32, %struct.vnt_rx_desc*, %struct.TYPE_4__, %struct.vnt_rx_desc*, %struct.vnt_rx_desc** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vnt_rx_desc = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@OWNED_BY_NIC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDvSafeResetRx(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_rx_desc*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %5 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 6
  %7 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %6, align 8
  %8 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %7, i64 0
  %9 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %10 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %9, i32 0, i32 7
  %11 = load %struct.vnt_rx_desc**, %struct.vnt_rx_desc*** %10, align 8
  %12 = getelementptr inbounds %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %11, i64 0
  store %struct.vnt_rx_desc* %8, %struct.vnt_rx_desc** %12, align 8
  %13 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 4
  %15 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %14, align 8
  %16 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %15, i64 0
  %17 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 7
  %19 = load %struct.vnt_rx_desc**, %struct.vnt_rx_desc*** %18, align 8
  %20 = getelementptr inbounds %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %19, i64 1
  store %struct.vnt_rx_desc* %16, %struct.vnt_rx_desc** %20, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %53, %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %24 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %21
  %29 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 6
  %31 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %31, i64 %33
  store %struct.vnt_rx_desc* %34, %struct.vnt_rx_desc** %4, align 8
  %35 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %36 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %4, align 8
  %40 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** @OWNED_BY_NIC, align 8
  %43 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %4, align 8
  %44 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %47 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %4, align 8
  %51 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  br label %53

53:                                               ; preds = %28
  %54 = load i32, i32* %3, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %21

56:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %89, %56
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %60 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ult i32 %58, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %57
  %65 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %66 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %65, i32 0, i32 4
  %67 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %67, i64 %69
  store %struct.vnt_rx_desc* %70, %struct.vnt_rx_desc** %4, align 8
  %71 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %72 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %4, align 8
  %76 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** @OWNED_BY_NIC, align 8
  %79 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %4, align 8
  %80 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %83 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %4, align 8
  %87 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  br label %89

89:                                               ; preds = %64
  %90 = load i32, i32* %3, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %57

92:                                               ; preds = %57
  %93 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %94 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @MACvRx0PerPktMode(i32 %95)
  %97 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %98 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @MACvRx1PerPktMode(i32 %99)
  %101 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %102 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %103 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @MACvSetCurrRx0DescAddr(%struct.vnt_private* %101, i32 %104)
  %106 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %107 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %108 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @MACvSetCurrRx1DescAddr(%struct.vnt_private* %106, i32 %109)
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @MACvRx0PerPktMode(i32) #1

declare dso_local i32 @MACvRx1PerPktMode(i32) #1

declare dso_local i32 @MACvSetCurrRx0DescAddr(%struct.vnt_private*, i32) #1

declare dso_local i32 @MACvSetCurrRx1DescAddr(%struct.vnt_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
