; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_update_recvframe_attrib_from_recvstat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_update_recvframe_attrib_from_recvstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_pkt_attrib = type { i32, i32, i32, i32, i32, i8*, i8* }
%struct.recv_stat = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rx_pkt_attrib*, %struct.recv_stat*)* @update_recvframe_attrib_from_recvstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_recvframe_attrib_from_recvstat(%struct.rx_pkt_attrib* %0, %struct.recv_stat* %1) #0 {
  %3 = alloca %struct.rx_pkt_attrib*, align 8
  %4 = alloca %struct.recv_stat*, align 8
  %5 = alloca i32, align 4
  store %struct.rx_pkt_attrib* %0, %struct.rx_pkt_attrib** %3, align 8
  store %struct.recv_stat* %1, %struct.recv_stat** %4, align 8
  %6 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %7 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le32_to_cpu(i32 %8)
  %10 = and i32 %9, 983040
  %11 = ashr i32 %10, 16
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 3
  store i32 %13, i32* %5, align 4
  %14 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %15 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = call i32 @BIT(i32 27)
  %19 = and i32 %17, %18
  %20 = ashr i32 %19, 27
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  %24 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %25 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %27 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = call i32 @BIT(i32 14)
  %31 = and i32 %29, %30
  %32 = ashr i32 %31, 14
  %33 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %34 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %36 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = call i32 @BIT(i32 13)
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %2
  %43 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %44 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %46 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = call i32 @BIT(i32 11)
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %54 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  br label %58

55:                                               ; preds = %42
  %56 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %57 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %60 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = call i32 @BIT(i32 12)
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %68 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %67, i32 0, i32 4
  store i32 1, i32* %68, align 8
  br label %72

69:                                               ; preds = %58
  %70 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %71 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %70, i32 0, i32 4
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  br label %76

73:                                               ; preds = %2
  %74 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %75 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %72
  %77 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %78 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = and i32 %80, 63
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %85 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %87 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  %90 = ashr i32 %89, 14
  %91 = and i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %3, align 8
  %95 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
