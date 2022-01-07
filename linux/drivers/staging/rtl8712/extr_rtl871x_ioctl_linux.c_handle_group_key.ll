; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_handle_group_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_handle_group_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_param = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct._adapter = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, %union.Keytype*, %union.Keytype*, %union.Keytype* }
%union.Keytype = type { i32 }

@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee_param*, %struct._adapter*)* @handle_group_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_group_key(%struct.ieee_param* %0, %struct._adapter* %1) #0 {
  %3 = alloca %struct.ieee_param*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %union.Keytype*, align 8
  %6 = alloca %union.Keytype*, align 8
  %7 = alloca %union.Keytype*, align 8
  store %struct.ieee_param* %0, %struct.ieee_param** %3, align 8
  store %struct._adapter* %1, %struct._adapter** %4, align 8
  %8 = load %struct._adapter*, %struct._adapter** %4, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load %union.Keytype*, %union.Keytype** %10, align 8
  store %union.Keytype* %11, %union.Keytype** %5, align 8
  %12 = load %struct._adapter*, %struct._adapter** %4, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %union.Keytype*, %union.Keytype** %14, align 8
  store %union.Keytype* %15, %union.Keytype** %6, align 8
  %16 = load %struct._adapter*, %struct._adapter** %4, align 8
  %17 = getelementptr inbounds %struct._adapter, %struct._adapter* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %union.Keytype*, %union.Keytype** %18, align 8
  store %union.Keytype* %19, %union.Keytype** %7, align 8
  %20 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %21 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %140

26:                                               ; preds = %2
  %27 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %28 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %140

33:                                               ; preds = %26
  %34 = load %union.Keytype*, %union.Keytype** %5, align 8
  %35 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %36 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %union.Keytype, %union.Keytype* %34, i64 %41
  %43 = bitcast %union.Keytype* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %46 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %51 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 16
  br i1 %55, label %56, label %57

56:                                               ; preds = %33
  br label %63

57:                                               ; preds = %33
  %58 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %59 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  br label %63

63:                                               ; preds = %57, %56
  %64 = phi i32 [ 16, %56 ], [ %62, %57 ]
  %65 = call i32 @memcpy(i32 %44, i32* %49, i32 %64)
  %66 = load %union.Keytype*, %union.Keytype** %6, align 8
  %67 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %68 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %union.Keytype, %union.Keytype* %66, i64 %73
  %75 = bitcast %union.Keytype* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %78 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 16
  %83 = call i32 @memcpy(i32 %76, i32* %82, i32 8)
  %84 = load %union.Keytype*, %union.Keytype** %7, align 8
  %85 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %86 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %union.Keytype, %union.Keytype* %84, i64 %91
  %93 = bitcast %union.Keytype* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %96 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 24
  %101 = call i32 @memcpy(i32 %94, i32* %100, i32 8)
  %102 = load %struct._adapter*, %struct._adapter** %4, align 8
  %103 = getelementptr inbounds %struct._adapter, %struct._adapter* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct._adapter*, %struct._adapter** %4, align 8
  %106 = load %struct._adapter*, %struct._adapter** %4, align 8
  %107 = getelementptr inbounds %struct._adapter, %struct._adapter* %106, i32 0, i32 3
  %108 = load %struct.ieee_param*, %struct.ieee_param** %3, align 8
  %109 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @r8712_set_key(%struct._adapter* %105, %struct.TYPE_12__* %107, i32 %112)
  %114 = load %struct._adapter*, %struct._adapter** %4, align 8
  %115 = getelementptr inbounds %struct._adapter, %struct._adapter* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %139

120:                                              ; preds = %63
  %121 = load %struct._adapter*, %struct._adapter** %4, align 8
  %122 = getelementptr inbounds %struct._adapter, %struct._adapter* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct._adapter*, %struct._adapter** %4, align 8
  %126 = getelementptr inbounds %struct._adapter, %struct._adapter* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %124, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %120
  %131 = load %struct._adapter*, %struct._adapter** %4, align 8
  %132 = getelementptr inbounds %struct._adapter, %struct._adapter* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i64, i64* @jiffies, align 8
  %135 = call i64 @msecs_to_jiffies(i32 60000)
  %136 = add nsw i64 %134, %135
  %137 = call i32 @mod_timer(i32* %133, i64 %136)
  br label %138

138:                                              ; preds = %130, %120
  br label %139

139:                                              ; preds = %138, %63
  br label %140

140:                                              ; preds = %139, %26, %2
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @r8712_set_key(%struct._adapter*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
