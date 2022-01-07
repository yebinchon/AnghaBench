; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_accept_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_accept_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { %struct.TYPE_4__, %struct.socket* }
%struct.TYPE_4__ = type { i64 }
%struct.socket = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }
%struct.iscsi_conn = type { i64, i32, %struct.socket*, i32 }
%struct.sockaddr_in = type { %struct.TYPE_6__, i32, i32, i32, i8* }
%struct.TYPE_6__ = type { %struct.sockaddr_in6* }
%struct.sockaddr_in6 = type { %struct.TYPE_6__, i32, i32, i32, i8* }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_accept_np(%struct.iscsi_np* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_np*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca %struct.sockaddr_in6, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_np* %0, %struct.iscsi_np** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %11 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %11, i32 0, i32 1
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %7, align 8
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = call i32 @kernel_accept(%struct.socket* %14, %struct.socket** %6, i32 0)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %162

20:                                               ; preds = %2
  %21 = load %struct.socket*, %struct.socket** %6, align 8
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 2
  store %struct.socket* %21, %struct.socket** %23, align 8
  %24 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %25 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %118

36:                                               ; preds = %20
  %37 = call i32 @memset(%struct.sockaddr_in6* %9, i32 0, i32 32)
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 2
  %40 = load %struct.socket*, %struct.socket** %39, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %43, align 8
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 2
  %47 = load %struct.socket*, %struct.socket** %46, align 8
  %48 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr*
  %49 = call i32 %44(%struct.socket* %47, %struct.sockaddr* %48, i32 1)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  %54 = call i32 @ipv6_addr_v4mapped(%struct.TYPE_6__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %58 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %57, i32 0, i32 3
  %59 = call i32 @memcpy(i32* %58, %struct.sockaddr_in6* %9, i32 32)
  br label %76

60:                                               ; preds = %52
  %61 = load i8*, i8** @AF_INET, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 4
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %68, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %69, i64 3
  %71 = call i32 @memcpy(i32* %66, %struct.sockaddr_in6* %70, i32 4)
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %73 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %72, i32 0, i32 3
  %74 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr_in6*
  %75 = call i32 @memcpy(i32* %73, %struct.sockaddr_in6* %74, i32 32)
  br label %76

76:                                               ; preds = %60, %56
  br label %77

77:                                               ; preds = %76, %36
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %78, i32 0, i32 2
  %80 = load %struct.socket*, %struct.socket** %79, align 8
  %81 = getelementptr inbounds %struct.socket, %struct.socket* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %83, align 8
  %85 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %86 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %85, i32 0, i32 2
  %87 = load %struct.socket*, %struct.socket** %86, align 8
  %88 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr*
  %89 = call i32 %84(%struct.socket* %87, %struct.sockaddr* %88, i32 0)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %77
  %93 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  %94 = call i32 @ipv6_addr_v4mapped(%struct.TYPE_6__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %98 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %97, i32 0, i32 1
  %99 = call i32 @memcpy(i32* %98, %struct.sockaddr_in6* %9, i32 32)
  br label %116

100:                                              ; preds = %92
  %101 = load i8*, i8** @AF_INET, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 4
  store i8* %101, i8** %102, align 8
  %103 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %107 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %108, align 8
  %110 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %109, i64 3
  %111 = call i32 @memcpy(i32* %106, %struct.sockaddr_in6* %110, i32 4)
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %113 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %112, i32 0, i32 1
  %114 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr_in6*
  %115 = call i32 @memcpy(i32* %113, %struct.sockaddr_in6* %114, i32 32)
  br label %116

116:                                              ; preds = %100, %96
  br label %117

117:                                              ; preds = %116, %77
  br label %161

118:                                              ; preds = %20
  %119 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr_in6*
  %120 = call i32 @memset(%struct.sockaddr_in6* %119, i32 0, i32 32)
  %121 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %122 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %121, i32 0, i32 2
  %123 = load %struct.socket*, %struct.socket** %122, align 8
  %124 = getelementptr inbounds %struct.socket, %struct.socket* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %126, align 8
  %128 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %129 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %128, i32 0, i32 2
  %130 = load %struct.socket*, %struct.socket** %129, align 8
  %131 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %132 = call i32 %127(%struct.socket* %130, %struct.sockaddr* %131, i32 1)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %118
  %136 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %137 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %136, i32 0, i32 3
  %138 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr_in6*
  %139 = call i32 @memcpy(i32* %137, %struct.sockaddr_in6* %138, i32 32)
  br label %140

140:                                              ; preds = %135, %118
  %141 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %142 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %141, i32 0, i32 2
  %143 = load %struct.socket*, %struct.socket** %142, align 8
  %144 = getelementptr inbounds %struct.socket, %struct.socket* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %146, align 8
  %148 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %149 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %148, i32 0, i32 2
  %150 = load %struct.socket*, %struct.socket** %149, align 8
  %151 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %152 = call i32 %147(%struct.socket* %150, %struct.sockaddr* %151, i32 0)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %140
  %156 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %157 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %156, i32 0, i32 1
  %158 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr_in6*
  %159 = call i32 @memcpy(i32* %157, %struct.sockaddr_in6* %158, i32 32)
  br label %160

160:                                              ; preds = %155, %140
  br label %161

161:                                              ; preds = %160, %117
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %18
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @kernel_accept(%struct.socket*, %struct.socket**, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @ipv6_addr_v4mapped(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_in6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
