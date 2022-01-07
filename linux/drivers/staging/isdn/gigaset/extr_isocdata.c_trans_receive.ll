; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_trans_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_trans_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32, %struct.TYPE_4__, %struct.sk_buff*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@DEBUG_STREAM_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rcv data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.bc_state*)* @trans_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trans_receive(i8* %0, i32 %1, %struct.bc_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_state*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bc_state* %2, %struct.bc_state** %6, align 8
  %10 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %11 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %17 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  br label %112

20:                                               ; preds = %3
  %21 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %22 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %21, i32 0, i32 2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp eq %struct.sk_buff* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %28 = call %struct.sk_buff* @gigaset_new_rx_skb(%struct.bc_state* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = icmp eq %struct.sk_buff* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %112

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %20
  %34 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %35 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %111, %33
  %42 = load i32, i32* %5, align 4
  %43 = icmp ugt i32 %42, 0
  br i1 %43, label %44, label %112

44:                                               ; preds = %41
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i8* @skb_put(%struct.sk_buff* %45, i32 %54)
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %64, %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ false, %56 ], [ %61, %59 ]
  br i1 %63, label %64, label %77

64:                                               ; preds = %62
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %4, align 8
  %67 = load i8, i8* %65, align 1
  %68 = zext i8 %67 to i32
  %69 = call i32 @bitrev8(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  store i8 %70, i8* %71, align 1
  %73 = load i32, i32* %5, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  br label %56

77:                                               ; preds = %62
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %77
  %81 = load i32, i32* @DEBUG_STREAM_DUMP, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dump_bytes(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %93 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %91
  store i32 %98, i32* %96, align 4
  %99 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = call i32 @gigaset_skb_rcvd(%struct.bc_state* %99, %struct.sk_buff* %100)
  %102 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %103 = call %struct.sk_buff* @gigaset_new_rx_skb(%struct.bc_state* %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %7, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = icmp eq %struct.sk_buff* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %80
  br label %112

107:                                              ; preds = %80
  %108 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %109 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %107, %77
  br label %41

112:                                              ; preds = %15, %31, %106, %41
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @gigaset_new_rx_skb(%struct.bc_state*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @dump_bytes(i32, i8*, i32, i32) #1

declare dso_local i32 @gigaset_skb_rcvd(%struct.bc_state*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
