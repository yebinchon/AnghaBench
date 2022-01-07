; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_read_page_from_socket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_read_page_from_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.page = type { i32 }
%struct.msghdr = type { i32 }
%struct.bio_vec = type { i32, i32, %struct.page* }

@READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_read_page_from_socket(%struct.TCP_Server_Info* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.msghdr, align 4
  %10 = alloca %struct.bio_vec, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 0
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 2
  %16 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %16, %struct.page** %15, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  %18 = load i32, i32* @READ, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @iov_iter_bvec(i32* %17, i32 %18, %struct.bio_vec* %10, i32 1, i32 %19)
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %22 = call i32 @cifs_readv_from_socket(%struct.TCP_Server_Info* %21, %struct.msghdr* %9)
  ret i32 %22
}

declare dso_local i32 @iov_iter_bvec(i32*, i32, %struct.bio_vec*, i32, i32) #1

declare dso_local i32 @cifs_readv_from_socket(%struct.TCP_Server_Info*, %struct.msghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
