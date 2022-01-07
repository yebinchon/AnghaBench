; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_convert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.dlm_lkb, %struct.dlm_rsb }
%struct.dlm_lkb = type { i64, %struct.dlm_rsb*, i64, i32 }
%struct.dlm_rsb = type { i32 }
%struct.dlm_message = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"receive_convert %x remid %x recover_seq %llu remote %d %x\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_message*)* @receive_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_convert(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_message*, align 8
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca %struct.dlm_rsb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %5, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %11 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %12 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @find_lkb(%struct.dlm_ls* %10, i32 %13, %struct.dlm_lkb** %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %106

18:                                               ; preds = %2
  %19 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %20 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %23 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %18
  %27 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %28 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %29 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %32 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %35 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %42 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @log_error(%struct.dlm_ls* %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33, i64 %36, i32 %40, i64 %43)
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %48 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %47)
  br label %106

49:                                               ; preds = %18
  %50 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %51 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %50, i32 0, i32 1
  %52 = load %struct.dlm_rsb*, %struct.dlm_rsb** %51, align 8
  store %struct.dlm_rsb* %52, %struct.dlm_rsb** %7, align 8
  %53 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %54 = call i32 @hold_rsb(%struct.dlm_rsb* %53)
  %55 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %56 = call i32 @lock_rsb(%struct.dlm_rsb* %55)
  %57 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %58 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %59 = call i32 @validate_message(%struct.dlm_lkb* %57, %struct.dlm_message* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %99

63:                                               ; preds = %49
  %64 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %65 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %66 = call i32 @receive_flags(%struct.dlm_lkb* %64, %struct.dlm_message* %65)
  %67 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %68 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %69 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %70 = call i32 @receive_convert_args(%struct.dlm_ls* %67, %struct.dlm_lkb* %68, %struct.dlm_message* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %75 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @send_convert_reply(%struct.dlm_rsb* %74, %struct.dlm_lkb* %75, i32 %76)
  br label %99

78:                                               ; preds = %63
  %79 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %80 = call i32 @down_conversion(%struct.dlm_lkb* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %9, align 4
  %84 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %85 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %86 = call i32 @do_convert(%struct.dlm_rsb* %84, %struct.dlm_lkb* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %91 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @send_convert_reply(%struct.dlm_rsb* %90, %struct.dlm_lkb* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %78
  %95 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %96 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @do_convert_effects(%struct.dlm_rsb* %95, %struct.dlm_lkb* %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %73, %62
  %100 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %101 = call i32 @unlock_rsb(%struct.dlm_rsb* %100)
  %102 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %103 = call i32 @put_rsb(%struct.dlm_rsb* %102)
  %104 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %105 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %104)
  store i32 0, i32* %3, align 4
  br label %117

106:                                              ; preds = %26, %17
  %107 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %108 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %109 = call i32 @setup_stub_lkb(%struct.dlm_ls* %107, %struct.dlm_message* %108)
  %110 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %111 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %110, i32 0, i32 1
  %112 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %113 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %112, i32 0, i32 0
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @send_convert_reply(%struct.dlm_rsb* %111, %struct.dlm_lkb* %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %106, %99
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, i64, i64, i32, i64) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_message(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_flags(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_convert_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @send_convert_reply(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @down_conversion(%struct.dlm_lkb*) #1

declare dso_local i32 @do_convert(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @do_convert_effects(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @setup_stub_lkb(%struct.dlm_ls*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
