; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_set_iso_npdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_set_iso_npdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i64, i32, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__*, %struct.iscsi_conn_ops* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_conn_ops = type { i32 }
%struct.iscsi_param = type { i32 }

@MAXBURSTLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"param not found key %s\0A\00", align 1
@CXGBIT_MAX_ISO_PAYLOAD = common dso_local global i32 0, align 4
@ISCSI_HDR_LEN = common dso_local global i32 0, align 4
@cxgbit_digest_len = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*)* @cxgbit_set_iso_npdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_set_iso_npdu(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_conn_ops*, align 8
  %6 = alloca %struct.iscsi_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  %12 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %13 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %12, i32 0, i32 3
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %4, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 3
  %17 = load %struct.iscsi_conn_ops*, %struct.iscsi_conn_ops** %16, align 8
  store %struct.iscsi_conn_ops* %17, %struct.iscsi_conn_ops** %5, align 8
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %1
  %25 = load i32, i32* @MAXBURSTLENGTH, align 4
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %25, i32 %28)
  store %struct.iscsi_param* %29, %struct.iscsi_param** %6, align 8
  %30 = load %struct.iscsi_param*, %struct.iscsi_param** %6, align 8
  %31 = icmp ne %struct.iscsi_param* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @MAXBURSTLENGTH, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %2, align 4
  br label %88

35:                                               ; preds = %24
  %36 = load %struct.iscsi_param*, %struct.iscsi_param** %6, align 8
  %37 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @kstrtou32(i32 %38, i32 0, i32* %8)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %88

42:                                               ; preds = %35
  br label %51

43:                                               ; preds = %1
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %45 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %43, %42
  %52 = load %struct.iscsi_conn_ops*, %struct.iscsi_conn_ops** %5, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn_ops, %struct.iscsi_conn_ops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @CXGBIT_MAX_ISO_PAYLOAD, align 4
  %59 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %60 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rounddown(i32 %58, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32*, i32** @cxgbit_digest_len, align 8
  %68 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %69 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %66, %72
  %74 = sdiv i32 %63, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @min(i32 %75, i32 %76)
  %78 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %79 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %81 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %51
  %85 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %86 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %51
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %41, %32
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @kstrtou32(i32, i32, i32*) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
