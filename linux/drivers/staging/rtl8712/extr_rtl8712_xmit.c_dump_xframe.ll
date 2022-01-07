; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_dump_xframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_dump_xframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv, %struct.xmit_priv }
%struct.security_priv = type { i64 }
%struct.xmit_priv = type { i32 }
%struct.xmit_frame = type { i32*, i32*, i32*, i32*, %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i32, i32, i32, i32 }

@TXDESC_SIZE = common dso_local global i32 0, align 4
@RTL8712_DMA_H2CCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %struct.xmit_frame*)* @dump_xframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_xframe(%struct._adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pkt_attrib*, align 8
  %11 = alloca %struct.xmit_priv*, align 8
  %12 = alloca %struct.security_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %13 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %14 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %13, i32 0, i32 4
  store %struct.pkt_attrib* %14, %struct.pkt_attrib** %10, align 8
  %15 = load %struct._adapter*, %struct._adapter** %3, align 8
  %16 = getelementptr inbounds %struct._adapter, %struct._adapter* %15, i32 0, i32 1
  store %struct.xmit_priv* %16, %struct.xmit_priv** %11, align 8
  %17 = load %struct._adapter*, %struct._adapter** %3, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 0
  store %struct.security_priv* %18, %struct.security_priv** %12, align 8
  %19 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %20 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 2054
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %26 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 34958
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct._adapter*, %struct._adapter** %3, align 8
  %32 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %33 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @r8712_issue_addbareq_cmd(%struct._adapter* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %24
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %39 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %8, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %121, %37
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %44 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %124

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %50 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp ne i32 %48, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %47
  %55 = load %struct.xmit_priv*, %struct.xmit_priv** %11, align 8
  %56 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 4
  %60 = load %struct.security_priv*, %struct.security_priv** %12, align 8
  %61 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %69

65:                                               ; preds = %54
  %66 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %67 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %65, %64
  %70 = phi i32 [ 0, %64 ], [ %68, %65 ]
  %71 = sub nsw i32 %59, %70
  store i32 %71, i32* %6, align 4
  %72 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %73 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 0, i32* %77, align 4
  br label %88

78:                                               ; preds = %47
  %79 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %80 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %83 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %78, %69
  %89 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @update_txdesc(%struct.xmit_frame* %89, i32* %90, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @TXDESC_SIZE, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %7, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %98 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %97, i32 0, i32 2
  store i32* %96, i32** %98, align 8
  %99 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %100 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 0, i32* %104, align 4
  %105 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %106 = call i32 @get_ff_hwaddr(%struct.xmit_frame* %105)
  store i32 %106, i32* %9, align 4
  %107 = load %struct._adapter*, %struct._adapter** %3, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %111 = bitcast %struct.xmit_frame* %110 to i8*
  %112 = call i32 @r8712_write_port(%struct._adapter* %107, i32 %108, i32 %109, i8* %111)
  %113 = load i32, i32* %7, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %8, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = ptrtoint i32* %117 to i32
  %119 = call i64 @RND4(i32 %118)
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %8, align 8
  br label %121

121:                                              ; preds = %88
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %41

124:                                              ; preds = %41
  ret void
}

declare dso_local i32 @r8712_issue_addbareq_cmd(%struct._adapter*, i32) #1

declare dso_local i32 @update_txdesc(%struct.xmit_frame*, i32*, i32) #1

declare dso_local i32 @get_ff_hwaddr(%struct.xmit_frame*) #1

declare dso_local i32 @r8712_write_port(%struct._adapter*, i32, i32, i8*) #1

declare dso_local i64 @RND4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
