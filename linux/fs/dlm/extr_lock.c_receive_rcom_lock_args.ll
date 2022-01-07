; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_rcom_lock_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_rcom_lock_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.dlm_rsb = type { i32 }
%struct.dlm_rcom = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rcom_lock = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DLM_IFL_MSTCPY = common dso_local global i32 0, align 4
@DLM_CB_BAST = common dso_local global i32 0, align 4
@fake_bastfn = common dso_local global i32 0, align 4
@DLM_CB_CAST = common dso_local global i32 0, align 4
@fake_astfn = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLM_MSG_CONVERT = common dso_local global i32 0, align 4
@DLM_LKSTS_CONVERT = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@RSB_RECOVER_CONVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_rsb*, %struct.dlm_rcom*)* @receive_rcom_lock_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_rcom_lock_args(%struct.dlm_ls* %0, %struct.dlm_lkb* %1, %struct.dlm_rsb* %2, %struct.dlm_rcom* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlm_ls*, align 8
  %7 = alloca %struct.dlm_lkb*, align 8
  %8 = alloca %struct.dlm_rsb*, align 8
  %9 = alloca %struct.dlm_rcom*, align 8
  %10 = alloca %struct.rcom_lock*, align 8
  %11 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %6, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %7, align 8
  store %struct.dlm_rsb* %2, %struct.dlm_rsb** %8, align 8
  store %struct.dlm_rcom* %3, %struct.dlm_rcom** %9, align 8
  %12 = load %struct.dlm_rcom*, %struct.dlm_rcom** %9, align 8
  %13 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.rcom_lock*
  store %struct.rcom_lock* %15, %struct.rcom_lock** %10, align 8
  %16 = load %struct.dlm_rcom*, %struct.dlm_rcom** %9, align 8
  %17 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %21 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %23 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %27 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %29 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %33 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %35 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %39 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %41 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = and i32 %43, 65535
  %45 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %46 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @DLM_IFL_MSTCPY, align 4
  %48 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %49 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %53 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %57 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %59 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %62 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %64 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %67 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %69 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DLM_CB_BAST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32* @fake_bastfn, i32* null
  %76 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %77 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %76, i32 0, i32 8
  store i32* %75, i32** %77, align 8
  %78 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %79 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DLM_CB_CAST, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32* @fake_astfn, i32* null
  %86 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %87 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %86, i32 0, i32 7
  store i32* %85, i32** %87, align 8
  %88 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %89 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %132

94:                                               ; preds = %4
  %95 = load %struct.dlm_rcom*, %struct.dlm_rcom** %9, align 8
  %96 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = sub i64 %99, 16
  %101 = sub i64 %100, 56
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %105 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %94
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %154

111:                                              ; preds = %94
  %112 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %113 = call i32 @dlm_allocate_lvb(%struct.dlm_ls* %112)
  %114 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %115 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %117 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %154

123:                                              ; preds = %111
  %124 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %125 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %128 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @memcpy(i32 %126, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %123, %4
  %133 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %134 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @DLM_MSG_CONVERT, align 4
  %137 = call i64 @cpu_to_le16(i32 %136)
  %138 = icmp eq i64 %135, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %132
  %140 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %141 = call i64 @middle_conversion(%struct.dlm_lkb* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %139
  %144 = load i32, i32* @DLM_LKSTS_CONVERT, align 4
  %145 = load %struct.rcom_lock*, %struct.rcom_lock** %10, align 8
  %146 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @DLM_LOCK_IV, align 4
  %148 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %149 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %151 = load i32, i32* @RSB_RECOVER_CONVERT, align 4
  %152 = call i32 @rsb_set_flag(%struct.dlm_rsb* %150, i32 %151)
  br label %153

153:                                              ; preds = %143, %139, %132
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %120, %108
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dlm_allocate_lvb(%struct.dlm_ls*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @middle_conversion(%struct.dlm_lkb*) #1

declare dso_local i32 @rsb_set_flag(%struct.dlm_rsb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
