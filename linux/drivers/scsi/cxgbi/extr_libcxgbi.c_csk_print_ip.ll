; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_csk_print_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_csk_print_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*, i8*)* @csk_print_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csk_print_ip(%struct.cxgbi_sock* %0, i8* %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %7 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %6)
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %16 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %18)
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %28 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %27)
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
