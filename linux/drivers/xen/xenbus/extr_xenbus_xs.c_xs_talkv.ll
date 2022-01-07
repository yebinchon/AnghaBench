; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_talkv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_talkv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i64 }
%struct.xenbus_transaction = type { i32 }
%struct.xb_req_data = type { i32, i32, i32, %struct.kvec* }
%struct.xsd_sockmsg = type { i32, i32, i32, i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xs_wake_up = common dso_local global i32 0, align 4
@XS_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"unexpected type [%d], expected [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, %struct.kvec*, i32, i32*)* @xs_talkv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xs_talkv(i32 %0, i32 %1, %struct.kvec* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xenbus_transaction, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.xb_req_data*, align 8
  %13 = alloca %struct.xsd_sockmsg, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  store i32 %0, i32* %17, align 4
  store i32 %1, i32* %8, align 4
  store %struct.kvec* %2, %struct.kvec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %14, align 8
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = load i32, i32* @__GFP_HIGH, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.xb_req_data* @kmalloc(i32 24, i32 %20)
  store %struct.xb_req_data* %21, %struct.xb_req_data** %12, align 8
  %22 = load %struct.xb_req_data*, %struct.xb_req_data** %12, align 8
  %23 = icmp ne %struct.xb_req_data* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i8* @ERR_PTR(i32 %26)
  store i8* %27, i8** %6, align 8
  br label %114

28:                                               ; preds = %5
  %29 = load %struct.kvec*, %struct.kvec** %9, align 8
  %30 = load %struct.xb_req_data*, %struct.xb_req_data** %12, align 8
  %31 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %30, i32 0, i32 3
  store %struct.kvec* %29, %struct.kvec** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.xb_req_data*, %struct.xb_req_data** %12, align 8
  %34 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @xs_wake_up, align 4
  %36 = load %struct.xb_req_data*, %struct.xb_req_data** %12, align 8
  %37 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.xb_req_data*, %struct.xb_req_data** %12, align 8
  %39 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %13, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %13, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %13, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %13, i32 0, i32 1
  store i32 0, i32* %46, align 4
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %63, %28
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.kvec*, %struct.kvec** %9, align 8
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.kvec, %struct.kvec* %52, i64 %54
  %56 = getelementptr inbounds %struct.kvec, %struct.kvec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %13, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %60, %57
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %15, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load %struct.xb_req_data*, %struct.xb_req_data** %12, align 8
  %68 = call i32 @xs_send(%struct.xb_req_data* %67, %struct.xsd_sockmsg* %13)
  %69 = load %struct.xb_req_data*, %struct.xb_req_data** %12, align 8
  %70 = call i8* @xs_wait_for_reply(%struct.xb_req_data* %69, %struct.xsd_sockmsg* %13)
  store i8* %70, i8** %14, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %13, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i8*, i8** %14, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i8*, i8** %14, align 8
  store i8* %82, i8** %6, align 8
  br label %114

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @XS_ERROR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @get_error(i8* %90)
  store i32 %91, i32* %16, align 4
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load i32, i32* %16, align 4
  %95 = sub nsw i32 0, %94
  %96 = call i8* @ERR_PTR(i32 %95)
  store i8* %96, i8** %6, align 8
  br label %114

97:                                               ; preds = %83
  %98 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %13, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  %111 = call i8* @ERR_PTR(i32 %110)
  store i8* %111, i8** %6, align 8
  br label %114

112:                                              ; preds = %97
  %113 = load i8*, i8** %14, align 8
  store i8* %113, i8** %6, align 8
  br label %114

114:                                              ; preds = %112, %102, %89, %81, %24
  %115 = load i8*, i8** %6, align 8
  ret i8* %115
}

declare dso_local %struct.xb_req_data* @kmalloc(i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @xs_send(%struct.xb_req_data*, %struct.xsd_sockmsg*) #1

declare dso_local i8* @xs_wait_for_reply(%struct.xb_req_data*, %struct.xsd_sockmsg*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @get_error(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
