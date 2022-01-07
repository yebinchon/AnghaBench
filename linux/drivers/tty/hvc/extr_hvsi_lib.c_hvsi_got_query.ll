; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsi_got_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsi_got_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_priv = type { i32, i32, i64 }
%struct.hvsi_query = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hvsi_query_response = type { %struct.TYPE_6__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@VSV_SEND_VERSION_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"HVSI@%x: Got version query, sending response...\0A\00", align 1
@VS_QUERY_RESPONSE_PACKET_HEADER = common dso_local global i32 0, align 4
@HVSI_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvsi_priv*)* @hvsi_got_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvsi_got_query(%struct.hvsi_priv* %0) #0 {
  %2 = alloca %struct.hvsi_priv*, align 8
  %3 = alloca %struct.hvsi_query*, align 8
  %4 = alloca %struct.hvsi_query_response, align 4
  store %struct.hvsi_priv* %0, %struct.hvsi_priv** %2, align 8
  %5 = load %struct.hvsi_priv*, %struct.hvsi_priv** %2, align 8
  %6 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.hvsi_query*
  store %struct.hvsi_query* %8, %struct.hvsi_query** %3, align 8
  %9 = load %struct.hvsi_query*, %struct.hvsi_query** %3, align 8
  %10 = getelementptr inbounds %struct.hvsi_query, %struct.hvsi_query* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @be16_to_cpu(i32 %11)
  %13 = load i64, i64* @VSV_SEND_VERSION_NUMBER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.hvsi_priv*, %struct.hvsi_priv** %2, align 8
  %18 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_devel(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @VS_QUERY_RESPONSE_PACKET_HEADER, align 4
  %22 = getelementptr inbounds %struct.hvsi_query_response, %struct.hvsi_query_response* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.hvsi_query_response, %struct.hvsi_query_response* %4, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 20, i32* %25, align 4
  %26 = load i64, i64* @VSV_SEND_VERSION_NUMBER, align 8
  %27 = call i32 @cpu_to_be16(i64 %26)
  %28 = getelementptr inbounds %struct.hvsi_query_response, %struct.hvsi_query_response* %4, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @HVSI_VERSION, align 4
  %30 = getelementptr inbounds %struct.hvsi_query_response, %struct.hvsi_query_response* %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hvsi_query*, %struct.hvsi_query** %3, align 8
  %33 = getelementptr inbounds %struct.hvsi_query, %struct.hvsi_query* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.hvsi_query_response, %struct.hvsi_query_response* %4, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.hvsi_priv*, %struct.hvsi_priv** %2, align 8
  %38 = getelementptr inbounds %struct.hvsi_query_response, %struct.hvsi_query_response* %4, i32 0, i32 0
  %39 = call i32 @hvsi_send_packet(%struct.hvsi_priv* %37, %struct.TYPE_6__* %38)
  %40 = load %struct.hvsi_priv*, %struct.hvsi_priv** %2, align 8
  %41 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @hvsi_send_packet(%struct.hvsi_priv*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
