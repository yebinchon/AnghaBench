; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i32 }
%struct.ism_req_hdr = type { i32 }
%struct.ism_resp_hdr = type { i32, i32 }

@ISM_ERROR = common dso_local global i32 0, align 4
@ism_debug_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cmd failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ism_dev*, i8*)* @ism_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_cmd(%struct.ism_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.ism_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ism_req_hdr*, align 8
  %6 = alloca %struct.ism_resp_hdr*, align 8
  store %struct.ism_dev* %0, %struct.ism_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ism_req_hdr*
  store %struct.ism_req_hdr* %8, %struct.ism_req_hdr** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ism_resp_hdr*
  store %struct.ism_resp_hdr* %10, %struct.ism_resp_hdr** %6, align 8
  %11 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %12 = load %struct.ism_req_hdr*, %struct.ism_req_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.ism_req_hdr, %struct.ism_req_hdr* %12, i64 1
  %14 = load %struct.ism_req_hdr*, %struct.ism_req_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.ism_req_hdr, %struct.ism_req_hdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @__ism_write_cmd(%struct.ism_dev* %11, %struct.ism_req_hdr* %13, i32 4, i32 %19)
  %21 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %22 = load %struct.ism_req_hdr*, %struct.ism_req_hdr** %5, align 8
  %23 = call i32 @__ism_write_cmd(%struct.ism_dev* %21, %struct.ism_req_hdr* %22, i32 0, i32 4)
  %24 = load %struct.ism_resp_hdr*, %struct.ism_resp_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.ism_resp_hdr, %struct.ism_resp_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ISM_ERROR, align 4
  %28 = call i32 @WRITE_ONCE(i32 %26, i32 %27)
  %29 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %30 = load %struct.ism_resp_hdr*, %struct.ism_resp_hdr** %6, align 8
  %31 = call i32 @__ism_read_cmd(%struct.ism_dev* %29, %struct.ism_resp_hdr* %30, i32 0, i32 8)
  %32 = load %struct.ism_resp_hdr*, %struct.ism_resp_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.ism_resp_hdr, %struct.ism_resp_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load i32, i32* @ism_debug_info, align 4
  %38 = call i32 @debug_text_event(i32 %37, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ism_debug_info, align 4
  %40 = load %struct.ism_resp_hdr*, %struct.ism_resp_hdr** %6, align 8
  %41 = call i32 @debug_event(i32 %39, i32 0, %struct.ism_resp_hdr* %40, i32 8)
  br label %53

42:                                               ; preds = %2
  %43 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %44 = load %struct.ism_resp_hdr*, %struct.ism_resp_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.ism_resp_hdr, %struct.ism_resp_hdr* %44, i64 1
  %46 = load %struct.ism_resp_hdr*, %struct.ism_resp_hdr** %6, align 8
  %47 = getelementptr inbounds %struct.ism_resp_hdr, %struct.ism_resp_hdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @__ism_read_cmd(%struct.ism_dev* %43, %struct.ism_resp_hdr* %45, i32 8, i32 %51)
  br label %53

53:                                               ; preds = %42, %36
  %54 = load %struct.ism_resp_hdr*, %struct.ism_resp_hdr** %6, align 8
  %55 = getelementptr inbounds %struct.ism_resp_hdr, %struct.ism_resp_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  ret i32 %56
}

declare dso_local i32 @__ism_write_cmd(%struct.ism_dev*, %struct.ism_req_hdr*, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @__ism_read_cmd(%struct.ism_dev*, %struct.ism_resp_hdr*, i32, i32) #1

declare dso_local i32 @debug_text_event(i32, i32, i8*) #1

declare dso_local i32 @debug_event(i32, i32, %struct.ism_resp_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
