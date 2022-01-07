; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_copy_frags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_copy_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pkt_gl = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.pkt_gl*, i32)* @cxgbit_copy_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_copy_frags(%struct.sk_buff* %0, %struct.pkt_gl* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pkt_gl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.pkt_gl* %1, %struct.pkt_gl** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %16 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %22 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %31 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = sub nsw i64 %35, %37
  %39 = call i32 @__skb_fill_page_desc(%struct.sk_buff* %13, i64 %14, i32 %20, i64 %29, i64 %38)
  store i64 1, i64* %8, align 8
  br label %40

40:                                               ; preds = %73, %3
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %43 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %48, %49
  %51 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %52 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %59 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %66 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @__skb_fill_page_desc(%struct.sk_buff* %47, i64 %50, i32 %57, i64 %64, i64 %71)
  br label %73

73:                                               ; preds = %46
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %40

76:                                               ; preds = %40
  %77 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %78 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %79
  store i64 %84, i64* %82, align 8
  %85 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %86 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %89 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @get_page(i32 %94)
  ret void
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @__skb_fill_page_desc(%struct.sk_buff*, i64, i32, i64, i64) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
