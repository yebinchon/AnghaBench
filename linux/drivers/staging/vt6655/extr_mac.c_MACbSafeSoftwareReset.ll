; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_mac.c_MACbSafeSoftwareReset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_mac.c_MACbSafeSoftwareReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@MAC_MAX_CONTEXT_SIZE_PAGE0 = common dso_local global i32 0, align 4
@MAC_MAX_CONTEXT_SIZE_PAGE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MACbSafeSoftwareReset(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %6 = load i32, i32* @MAC_MAX_CONTEXT_SIZE_PAGE0, align 4
  %7 = load i32, i32* @MAC_MAX_CONTEXT_SIZE_PAGE1, align 4
  %8 = add nsw i32 %6, %7
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %13 = call i32 @MACvSaveContext(%struct.vnt_private* %12, i8* %11)
  %14 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %15 = call i32 @MACbSoftwareReset(%struct.vnt_private* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %17 = call i32 @MACvRestoreContext(%struct.vnt_private* %16, i8* %11)
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %19)
  ret i32 %18
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MACvSaveContext(%struct.vnt_private*, i8*) #2

declare dso_local i32 @MACbSoftwareReset(%struct.vnt_private*) #2

declare dso_local i32 @MACvRestoreContext(%struct.vnt_private*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
