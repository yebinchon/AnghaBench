; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_netmisc.c_cifs_set_port.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_netmisc.c_cifs_set_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_set_port(%struct.sockaddr* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i16, align 2
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %20 [
    i32 129, label %8
    i32 128, label %14
  ]

8:                                                ; preds = %2
  %9 = load i16, i16* %4, align 2
  %10 = call i8* @htons(i16 zeroext %9)
  %11 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load i16, i16* %4, align 2
  %16 = call i8* @htons(i16 zeroext %15)
  %17 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in6*
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  br label %20

20:                                               ; preds = %2, %14, %8
  ret void
}

declare dso_local i8* @htons(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
