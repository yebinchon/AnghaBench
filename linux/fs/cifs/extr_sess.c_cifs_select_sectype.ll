; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_cifs_select_sectype.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_cifs_select_sectype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32, i32 }

@global_secflags = common dso_local global i32 0, align 4
@CIFSSEC_MAY_NTLMSSP = common dso_local global i32 0, align 4
@CIFSSEC_MAY_KRB5 = common dso_local global i32 0, align 4
@CIFSSEC_MAY_NTLMV2 = common dso_local global i32 0, align 4
@CIFSSEC_MAY_NTLM = common dso_local global i32 0, align 4
@CIFSSEC_MAY_LANMAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_select_sectype(%struct.TCP_Server_Info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %7 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %73 [
    i32 136, label %9
    i32 134, label %42
    i32 135, label %61
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %41 [
    i32 133, label %11
    i32 129, label %11
    i32 128, label %13
  ]

11:                                               ; preds = %9, %9
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %74

13:                                               ; preds = %9
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @global_secflags, align 4
  %20 = load i32, i32* @CIFSSEC_MAY_NTLMSSP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 129, i32* %3, align 4
  br label %74

24:                                               ; preds = %18, %13
  %25 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %26 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %31 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @global_secflags, align 4
  %36 = load i32, i32* @CIFSSEC_MAY_KRB5, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 133, i32* %3, align 4
  br label %74

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %9, %40
  store i32 128, i32* %3, align 4
  br label %74

42:                                               ; preds = %2
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %59 [
    i32 131, label %44
    i32 130, label %44
    i32 128, label %46
  ]

44:                                               ; preds = %42, %42
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %3, align 4
  br label %74

46:                                               ; preds = %42
  %47 = load i32, i32* @global_secflags, align 4
  %48 = load i32, i32* @CIFSSEC_MAY_NTLMV2, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 130, i32* %3, align 4
  br label %74

52:                                               ; preds = %46
  %53 = load i32, i32* @global_secflags, align 4
  %54 = load i32, i32* @CIFSSEC_MAY_NTLM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 131, i32* %3, align 4
  br label %74

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %42, %58
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %2, %60
  %62 = load i32, i32* %5, align 4
  switch i32 %62, label %72 [
    i32 132, label %63
    i32 128, label %65
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %61
  %66 = load i32, i32* @global_secflags, align 4
  %67 = load i32, i32* @CIFSSEC_MAY_LANMAN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 132, i32* %3, align 4
  br label %74

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %61, %71
  store i32 128, i32* %3, align 4
  br label %74

73:                                               ; preds = %2
  store i32 128, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %72, %70, %63, %57, %51, %44, %41, %39, %23, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
