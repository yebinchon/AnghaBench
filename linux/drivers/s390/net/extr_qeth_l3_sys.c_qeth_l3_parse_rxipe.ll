; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_parse_rxipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_parse_rxipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"multicast rxip not supported.\0A\00", align 1
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @qeth_l3_parse_rxipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_parse_rxipe(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.in6_addr, align 4
  %9 = alloca %struct.in6_addr, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @qeth_l3_string_to_ipaddr(i8* %10, i32 %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @QETH_PROT_IPV4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @memcpy(%struct.in6_addr* %8, i32* %23, i32 4)
  %25 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ipv4_is_multicast(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %22
  br label %49

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @QETH_PROT_IPV6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @memcpy(%struct.in6_addr* %9, i32* %39, i32 4)
  %41 = call i64 @ipv6_addr_is_multicast(%struct.in6_addr* %9)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %34
  br label %49

49:                                               ; preds = %48, %33
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %43, %29, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @qeth_l3_string_to_ipaddr(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*) #1

declare dso_local i64 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
