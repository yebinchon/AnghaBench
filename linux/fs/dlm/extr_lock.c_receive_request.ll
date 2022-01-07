; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.dlm_lkb, %struct.dlm_rsb }
%struct.dlm_lkb = type { i32 }
%struct.dlm_rsb = type { i64 }
%struct.dlm_message = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DLM_IFL_MSTCPY = common dso_local global i32 0, align 4
@R_RECEIVE_REQUEST = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"receive_request %x from %d %d\00", align 1
@EBADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_message*)* @receive_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_request(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_message*, align 8
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca %struct.dlm_rsb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %12 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %16 = call i32 @create_lkb(%struct.dlm_ls* %15, %struct.dlm_lkb** %6)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %111

20:                                               ; preds = %2
  %21 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %22 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %23 = call i32 @receive_flags(%struct.dlm_lkb* %21, %struct.dlm_message* %22)
  %24 = load i32, i32* @DLM_IFL_MSTCPY, align 4
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %30 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %31 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %32 = call i32 @receive_request_args(%struct.dlm_ls* %29, %struct.dlm_lkb* %30, %struct.dlm_message* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %38 = call i32 @__put_lkb(%struct.dlm_ls* %36, %struct.dlm_lkb* %37)
  br label %111

39:                                               ; preds = %20
  %40 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %41 = call i32 @receive_extralen(%struct.dlm_message* %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %43 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %44 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @R_RECEIVE_REQUEST, align 4
  %49 = call i32 @find_rsb(%struct.dlm_ls* %42, i32 %45, i32 %46, i32 %47, i32 %48, %struct.dlm_rsb** %7)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %54 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %55 = call i32 @__put_lkb(%struct.dlm_ls* %53, %struct.dlm_lkb* %54)
  br label %111

56:                                               ; preds = %39
  %57 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %58 = call i32 @lock_rsb(%struct.dlm_rsb* %57)
  %59 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %60 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 (...) @dlm_our_nodeid()
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %56
  %65 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %66 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @validate_master_nodeid(%struct.dlm_ls* %65, %struct.dlm_rsb* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %73 = call i32 @unlock_rsb(%struct.dlm_rsb* %72)
  %74 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %75 = call i32 @put_rsb(%struct.dlm_rsb* %74)
  %76 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %77 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %78 = call i32 @__put_lkb(%struct.dlm_ls* %76, %struct.dlm_lkb* %77)
  br label %111

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79, %56
  %81 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %82 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %83 = call i32 @attach_lkb(%struct.dlm_rsb* %81, %struct.dlm_lkb* %82)
  %84 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %85 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %86 = call i32 @do_request(%struct.dlm_rsb* %84, %struct.dlm_lkb* %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %88 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @send_request_reply(%struct.dlm_rsb* %87, %struct.dlm_lkb* %88, i32 %89)
  %91 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %92 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @do_request_effects(%struct.dlm_rsb* %91, %struct.dlm_lkb* %92, i32 %93)
  %95 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %96 = call i32 @unlock_rsb(%struct.dlm_rsb* %95)
  %97 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %98 = call i32 @put_rsb(%struct.dlm_rsb* %97)
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @EINPROGRESS, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %80
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %80
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %109 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %108)
  br label %110

110:                                              ; preds = %107, %104
  store i32 0, i32* %3, align 4
  br label %151

111:                                              ; preds = %71, %52, %35, %19
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @ENOTBLK, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %118 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %119 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @log_limit(%struct.dlm_ls* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %116, %111
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @EBADR, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %134 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %135 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @send_repeat_remove(%struct.dlm_ls* %133, i32 %136, i32 %137)
  %139 = call i32 @msleep(i32 1000)
  br label %140

140:                                              ; preds = %132, %127, %124
  %141 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %142 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %143 = call i32 @setup_stub_lkb(%struct.dlm_ls* %141, %struct.dlm_message* %142)
  %144 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %145 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %144, i32 0, i32 1
  %146 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %147 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %146, i32 0, i32 0
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @send_request_reply(%struct.dlm_rsb* %145, %struct.dlm_lkb* %147, i32 %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %140, %110
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @create_lkb(%struct.dlm_ls*, %struct.dlm_lkb**) #1

declare dso_local i32 @receive_flags(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_request_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @__put_lkb(%struct.dlm_ls*, %struct.dlm_lkb*) #1

declare dso_local i32 @receive_extralen(%struct.dlm_message*) #1

declare dso_local i32 @find_rsb(%struct.dlm_ls*, i32, i32, i32, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i64 @dlm_our_nodeid(...) #1

declare dso_local i32 @validate_master_nodeid(%struct.dlm_ls*, %struct.dlm_rsb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @attach_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @do_request(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @send_request_reply(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @do_request_effects(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @log_limit(%struct.dlm_ls*, i8*, i32, i32, i32) #1

declare dso_local i32 @send_repeat_remove(%struct.dlm_ls*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @setup_stub_lkb(%struct.dlm_ls*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
