; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_iraw_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_iraw_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i8*, i32, %struct.cardstate* }
%struct.cardstate = type { i64, %struct.bc_state* }
%struct.bc_state = type { i32, i64, %struct.sk_buff* }
%struct.sk_buff = type { i64 }

@DLE_FLAG = common dso_local global i8 0, align 1
@INS_DLE_char = common dso_local global i32 0, align 4
@INS_DLE_command = common dso_local global i32 0, align 4
@INS_have_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inbuf_t*)* @iraw_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iraw_loop(i32 %0, %struct.inbuf_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.inbuf_t*, align 8
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca %struct.bc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store %struct.inbuf_t* %1, %struct.inbuf_t** %5, align 8
  %13 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %14 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %13, i32 0, i32 2
  %15 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  store %struct.cardstate* %15, %struct.cardstate** %6, align 8
  %16 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %17 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %16, i32 0, i32 1
  %18 = load %struct.bc_state*, %struct.bc_state** %17, align 8
  store %struct.bc_state* %18, %struct.bc_state** %7, align 8
  %19 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %20 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %23 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %22, i32 0, i32 2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %9, align 8
  %25 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %26 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %29 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  store i8* %32, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %37 = call i32 @gigaset_new_rx_skb(%struct.bc_state* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %3, align 4
  br label %119

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %91, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %49 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br label %52

52:                                               ; preds = %44, %40
  %53 = phi i1 [ false, %40 ], [ %51, %44 ]
  br i1 %53, label %54, label %99

54:                                               ; preds = %52
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  %57 = load i8, i8* %55, align 1
  store i8 %57, i8* %12, align 1
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = load i8, i8* %12, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @DLE_FLAG, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @INS_DLE_char, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* @INS_DLE_char, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %90

75:                                               ; preds = %65
  %76 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %77 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @INS_DLE_command, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80, %75
  %86 = load i32, i32* @INS_DLE_char, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %99

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %90, %54
  %92 = load i32, i32* @INS_have_data, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = load i8, i8* %12, align 1
  %97 = call i32 @bitrev8(i8 zeroext %96)
  %98 = call i32 @__skb_put_u8(%struct.sk_buff* %95, i32 %97)
  br label %40

99:                                               ; preds = %85, %52
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @INS_have_data, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = call i32 @gigaset_skb_rcvd(%struct.bc_state* %105, %struct.sk_buff* %106)
  %108 = load i32, i32* @INS_have_data, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %113 = call i32 @gigaset_new_rx_skb(%struct.bc_state* %112)
  br label %114

114:                                              ; preds = %104, %99
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %117 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %35
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @gigaset_new_rx_skb(%struct.bc_state*) #1

declare dso_local i32 @__skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @bitrev8(i8 zeroext) #1

declare dso_local i32 @gigaset_skb_rcvd(%struct.bc_state*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
